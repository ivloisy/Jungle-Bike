<?php

namespace Application\Controllers;

require_once('models/TaskModel.php');
require_once('models/PrestaModel.php');

use Application\Models\TaskModel;
use Application\Models\PrestaModel;

class TaskController
{
    public function execute()
    {
        $taskModel = new TaskModel();
        $prestaModel = new PrestaModel();
        $prestations = $prestaModel->getAllPrestations();
        $errorMessage = '';

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            if (isset($_POST['bikeId'], $_POST['prestaId'])) {
                $bikeId = $_POST['bikeId'];
                $prestaId = $_POST['prestaId'];
                $taskStatus = $_POST['taskStatus'];

                $bikeExists = $taskModel->checkBikeExists($bikeId); // Verifier si le vélo existe
                // var_dump($bikeExists);

                if ($bikeExists) {
                    $success = $taskModel->addTask($bikeId, $prestaId, $taskStatus); // Si le velo existe -> Ajout de la tâche

                    if ($success) {
                        header('Location: index.php'); // Si l'ajout de tâche a marché -> Redirection vers la page d'acceuil
                        exit;
                    } else {
                        $errorMessage = 'Erreur lors de l\'ajout de la tâche.';
                    }
                } else {
                    $errorMessage = 'Le numéro d\'ID du vélo n\'existe pas.';
                }
            } else {
                $errorMessage = 'ID de vélo ou ID de prestation manquant.';
            }
        }

        require('views/add_task.php');
    }
}

