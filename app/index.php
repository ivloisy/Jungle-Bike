<?php

require_once('controllers/HomeController.php');
require_once('controllers/BikeController.php');
require_once('controllers/BikeProfilController.php');
require_once('controllers/TaskController.php');
require_once('controllers/ErrorController.php');

use Application\Controllers\HomeController;
use Application\Controllers\BikeController;
use Application\Controllers\BikeProfilController;
use Application\Controllers\TaskController;
use Application\Controllers\ErrorController;

try {
  $action = isset($_GET['action']) ? $_GET['action'] : '';

  $homeController = new HomeController();
  $bikeController = new BikeController();
  $bikeProfilController = new BikeProfilController();
  $taskController = new TaskController();
  $errorController = new ErrorController();

  // Page d'acceuil
  if ($action === '') {
      $homeController->execute();
  } elseif ($action === 'addBike') { // Page d'ajout de vélo
      $bikeController->addBike();
  } elseif ($action === 'editBike') { // Page d'édition de vélo
      $bikeId = isset($_GET['bike_id']) ? $_GET['bike_id'] : null;
      $bikeProfilController->showProfile($bikeId);
  } elseif ($action === 'addTask') { // Page d'ajout de tâche
      $taskController->execute();
  } else { // Redirection vers page d'erreur en cas de url non valide
      $errorController->execute();
  }
} catch (Exception $e) {
  $errorMessage = $e->getMessage();
  $errorController->showError($errorMessage);
}

