<?php

namespace Application\Models;

class Database
{
    private ?\PDO $database = null;

    public function getConnection(): \PDO
    {
        if ($this->database === null) {
            $this->database = new \PDO("mysql:host=db;dbname=jungle-bike", "ivanloisy", "mdp");
            // $this->database = new \PDO('mysql:host=' . $_ENV['MYSQL_HOST'] . ';dbname=' . $_ENV['MYSQL_DATABASE'] . ';charset=utf8', $_ENV['MYSQL_USER'], $_ENV['MYSQL_PASSWORD']);
        }

        return $this->database;
    }

    public function insertData($data) {
        $stmt = $this->database->prepare("INSERT INTO produit (id, name, description, price) VALUES (?, ?, ?, ?)");
        $stmt->execute($data);
    }
}

