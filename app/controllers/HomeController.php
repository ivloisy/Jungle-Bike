<?php

namespace Application\Controllers;

require_once('models/TaskModel.php');
require_once('models/PrestaModel.php');
require_once('models/BikeModel.php');

use Application\Models\TaskModel;
use Application\Models\PrestaModel;
use Application\Models\BikeModel;


class HomeController
{
  public function execute()
  {
    $taskModel = new TaskModel();
    $tasksToDo = $taskModel->getTasksByStatus('a faire');
    $tasksInProgress = $taskModel->getTasksByStatus('en cours');
    $tasksFinish = $taskModel->getTasksByStatus('termine');
    $prestaModel = new PrestaModel();
    $bikeModel = new BikeModel();

    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $taskId = $_POST['taskId'];
            $newStatus = $_POST['newStatus'];

            $taskModel = new TaskModel();
            $success = $taskModel->updateTaskStatus($taskId, $newStatus); // A chaque changement de statut

            header('Content-Type: application/json');
            echo json_encode(['success' => $success]);
            exit;
        }

    require('views/home.php');
  }
}

