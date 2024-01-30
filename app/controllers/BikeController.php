<?php

namespace Application\Controllers;

require_once('models/BikeModel.php');

use Application\Models\BikeModel;

class BikeController
{

    public function addBike()
    {
        $bikeModel = new BikeModel();
        $bikeData = $bikeModel->getBikeData();

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $bikeId = $bikeModel->insertBike();

            if ($bikeId) {
                $formData = $_POST;

                foreach ($formData as $dataId => $dataValue) { // Pour chaque input
                    if (!empty($dataValue)) {                  // Verifier si le champs est rempli
                        $dataId = $bikeModel->getDataIdByColumnName($dataId);

                        if ($dataId !== null) {
                            $success2 = $bikeModel->insertBikeDetails($bikeId, $dataId, $dataValue); // Si oui -> ajouter le detail

                            if (!$success2) {
                                echo 'Erreur lors de l\'insertion des détails.';
                                break;
                            }
                        } else {
                            echo 'Champ inconnu : ' . $dataId;
                            break;
                        }
                    }
                }

                header("Location: index.php");
                exit();
            } else {
                echo 'Erreur lors de l\'insertion du vélo.';
            }
        } else {
            require_once('views/add_bike.php');
        }
    }

    public function editBike($bikeId)
    {
        $bikeModel = new BikeModel();
        $bikeDetails = $bikeModel->getBikeDetails($bikeId);

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            header("Location: profile_bike.php?bike_id=" . $bikeId);
            exit;
        }

        require('views/editBike.php');
    }

}

