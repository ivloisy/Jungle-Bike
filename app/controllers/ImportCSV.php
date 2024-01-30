<?php

namespace Application\Controllers\ImportCSV;

require_once('models/Database.php');
// require_once('model/post.php');

use Application\Models\Database\Database;
// use Application\Model\Post\PostRepository;

class ImportCSV
{
  public function execute()
  {
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
      try {
        $db = new Database();
        $db->getConnection();

        $csvFile = $_FILES['csv']['tmp_name'];
        $handle = fopen($csvFile, "r");

        while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {
        $db->insertData($data);
      }

      fclose($handle);
      echo "Importation réussie !";

      } catch (PDOException $e) {
        echo "Erreur : " . $e->getMessage();
      }
    }

      require('views/importCSV.php');
  }

}

