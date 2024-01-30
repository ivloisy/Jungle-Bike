<?php

require_once('models/Database.php');

use Application\Models\Database;

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
  $taskId = $_POST['task_id'];
  $newStatus = $_POST['status'];

  try {
    $db = new Database();
    $connection = $db->getConnection();

    $sql = 'UPDATE task SET status = :newStatus WHERE id = :taskId';
    $stmt = $connection->prepare($sql);
    $stmt->bindParam(':newStatus', $newStatus, PDO::PARAM_STR);
    $stmt->bindParam(':taskId', $taskId, PDO::PARAM_INT);

    $stmt->execute();

    $rowCount = $stmt->rowCount();
    if ($rowCount > 0) {
      echo json_encode(['success' => true]);
      exit;
    } else {
      echo json_encode(['success' => false, 'message' => 'Aucune ligne mise à jour']);
    }
  } catch (PDOException $e) {
    error_log('Database Error: ' . $e->getMessage());
    echo json_encode(['success' => false, 'message' => $e->getMessage()]);
    }
  } else {
    echo 'error';
}

