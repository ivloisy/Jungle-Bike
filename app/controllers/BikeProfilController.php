<?php

namespace Application\Controllers;

require_once('models/BikeModel.php');

use Application\Models\BikeModel;

class BikeProfilController
{
    public function showProfile($bikeId)
    {
        $bikeModel = new BikeModel();
        $bikeDetails = $bikeModel->getBikeDetails($bikeId);
        $bikeData = $bikeModel->getBikeData();
        $successMessage = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            foreach ($bikeDetails as $detail) {
                $dataId = $detail['data_id'];
                $column = $bikeModel->getColumnNameById($dataId);

                $existingData = $bikeModel->getBikeDetailById($bikeId, $dataId); // Je recupere tout les 'bike_detail' qui ont un 'bike_id' egal à celui du vélo en question, et un 'data_id' egal à celui de l'inuput en question. Pour eviter les doublons.

                if ($existingData) { // Si il existe, je le mets à jour
                    $newValue = $_POST[$column];
                    // var_dump($existingData);
                    if ($existingData[0]['data_value'] !== $newValue) {
                        $bikeModel->updateBikeDetail($bikeId, $dataId, $newValue);
                        $successMessage = 'Les détails du vélo ont été mis à jour avec succès.';
                    }
                } else { // Sinon je le creer
                    $newValue = $_POST[$column];
                    if (!empty($newValue)) {
                        $bikeModel->insertBikeDetail($bikeId, $dataId, $newValue);
                        $successMessage = 'Les détails du vélo ont été ajoutés avec succès.';
                    }
                }
            }
            header('Location: index.php?action=editBike&bike_id=' . $bikeId);
            exit;
        }

        require('views/editBike.php');
    }

}

