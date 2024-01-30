<?php

namespace Application\Models;

require_once('models/Database.php');

use Application\Models\Database;

class TaskModel
{
  private $db;

  public function __construct()
  {
    $this->db = new Database();
  }

  // public function getAllTasks()
  // {
  // }

  // Fonction qui recupere toutes les tâches qui ont un 'status' egal à la valeur rentrée dans le parametre $status
  public function getTasksByStatus($status)
  {
    set_time_limit(10);

    try {
      $query = "SELECT * FROM task WHERE status = :status";
      $statement = $this->db->getConnection()->prepare($query);
      $statement->bindParam(':status', $status, \PDO::PARAM_STR); //Protection : 'status' doit etre une string
      $statement->execute();

      if ($statement) {
        return $statement->fetchAll(\PDO::FETCH_ASSOC);
      } else {
        error_log("Erreur lors de l'exécution de la requête SQL : " . implode(", ", $statement->errorInfo()));
        return [];
      }
    } catch (\PDOException $e) {
      if ($e->getCode() === 'HY000') {
        error_log("Timeout lors de l'exécution de la requête SQL : " . $e->getMessage());
        return [];
      } else {
        error_log("Erreur de requête SQL : " . $e->getMessage());
        return [];
      }
    }
  }

  // Fonction qui recupere la valeur 'prestation' d'une 'presta' donnée par 'id_prestation'
  public function getPrestationInfoById($idPrestation)
  {
    set_time_limit(10);

    try {
      $query = "SELECT prestation FROM presta WHERE id_prestation = :id_prestation";
      $statement = $this->db->getConnection()->prepare($query);
      $statement->bindParam(':id_prestation', $idPrestation, \PDO::PARAM_INT);
      $statement->execute();

      if ($statement) {
        $result = $statement->fetch(\PDO::FETCH_ASSOC);
        return $result['prestation'];
      } else {
        return '';
      }
    } catch (\PDOException $e) {
      if ($e->getCode() === 'HY000') {
        error_log("Timeout lors de l'exécution de la requête SQL : " . $e->getMessage());
        return [];
      } else {
        error_log("Erreur de requête SQL : " . $e->getMessage());
        return [];
      }
    }
  }

  // Fonction qui opere le changement de statut d'ue tâche
  public function updateTaskStatus($taskId, $newStatus)
  {
    set_time_limit(10);

    try {
      $db = new Database();
      $connection = $db->getConnection();

      $sql = 'UPDATE task SET status = :newStatus WHERE id = :taskId';
      $stmt = $connection->prepare($sql);
      $stmt->bindParam(':newStatus', $newStatus);
      $stmt->bindParam(':taskId', $taskId);

      $stmt->execute();

      $rowCount = $stmt->rowCount();
      return $rowCount > 0;
    } catch (\PDOException $e) {
      if ($e->getCode() === 'HY000') {
        error_log("Timeout lors de l'exécution de la requête SQL : " . $e->getMessage());
        return false;
      } else {
        error_log("Erreur de requête SQL : " . $e->getMessage());
        return false;
      }
    }
  }

  // Ajout d'une tâche
  public function addTask($bikeId, $prestaId, $taskStatus)
  {
      try {
          $query = "INSERT INTO task (bike_id, id_prestation, status) VALUES (:bikeId, :prestaId, :taskStatus)";
          $statement = $this->db->getConnection()->prepare($query);
          $statement->bindParam(':bikeId', $bikeId, \PDO::PARAM_INT);
          $statement->bindParam(':prestaId', $prestaId, \PDO::PARAM_INT);
          $statement->bindParam(':taskStatus', $taskStatus, \PDO::PARAM_STR);

          $statement->execute();

          return true;
      } catch (\PDOException $e) {
          error_log("Erreur de base de données : " . $e->getMessage());
          return false;
      }
  }

  // Fonction qui vérifie si un vélo existe grace à son 'id'
  public function checkBikeExists($bikeId)
  {
      try {
          $query = "SELECT COUNT(*) as count FROM bike WHERE id = :bikeId";
          $statement = $this->db->getConnection()->prepare($query);
          $statement->bindParam(':bikeId', $bikeId, \PDO::PARAM_INT);
          $statement->execute();

          $result = $statement->fetch(\PDO::FETCH_ASSOC);

          return isset($result['count']) && $result['count'] > 0; // Retourne 'true' si 'count' existe et qu'il est superieur à 0. 'false' si une des deux condition est fause.
      } catch (\PDOException $e) {
          error_log("Erreur de base de données : " . $e->getMessage());
          return false;
      }
  }

}

