<?php

namespace Application\Models;

class BikeModel
{
    private $db;

    public function __construct()
    {
        $this->db = new Database();
    }

public function getBikeData()
{
    try {
        $query = "SELECT id, bike_column FROM bike_data";
        $statement = $this->db->getConnection()->query($query);

        if ($statement) {
            $data = $statement->fetchAll(\PDO::FETCH_ASSOC);

            foreach ($data as &$row) {
                $row['formatted_column'] = $this->getFormattedColumnName($row['bike_column']);
            }

            return $data;
        } else {
            error_log("Erreur lors de l'exécution de la requête SQL : " . implode(", ", $this->db->getConnection()->errorInfo()));
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
    public function getFormattedColumnName($columnName)
    {
        return ucfirst(str_replace('_', ' ', $columnName));
    }

    public function getBikeById($bikeId)
    {
        try {
            $query = "SELECT * FROM bike WHERE id = :bikeId";
            $statement = $this->db->getConnection()->prepare($query);
            $statement->bindParam(':bikeId', $bikeId, \PDO::PARAM_INT);
            $statement->execute();

            if ($statement) {
                return $statement->fetch(\PDO::FETCH_ASSOC);
            } else {
                error_log("Erreur lors de l'exécution de la requête SQL : " . implode(", ", $this->db->getConnection()->errorInfo()));
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

public function insertBike()
{
    try {
        $query = "INSERT INTO bike () VALUES ()";
        $statement = $this->db->getConnection()->prepare($query);

        $statement->execute();

        $lastInsertedId = $this->db->getConnection()->lastInsertId();

        return $lastInsertedId;
    } catch (\PDOException $e) {
        if ($e->getCode() === 'HY000') {
            error_log("Timeout lors de l'exécution de la requête SQL : " . $e->getMessage());
        } else {
            error_log("Erreur de requête SQL : " . $e->getMessage());
        }

        return false;
    }
}

public function insertBikeDetails($bikeId, $dataId, $dataValue)
{
    try {
        $query = "INSERT INTO bike_detail (bike_id, data_id, data_value) VALUES (:bikeId, :dataId, :dataValue)";
        $statement = $this->db->getConnection()->prepare($query);
        $statement->bindParam(':bikeId', $bikeId, \PDO::PARAM_INT);

        $dataId = intval($dataId);
        $statement->bindParam(':dataId', $dataId, \PDO::PARAM_INT);

        $statement->bindParam(':dataValue', $dataValue, \PDO::PARAM_STR);
        $statement->execute();

        return true;
    } catch (\PDOException $e) {
        echo "Erreur lors de l'insertion des détails : " . $e->getMessage();
        return false;
    }
}


    public function getLastInsertedId()
{
    try {
        $db = new Database();
        $connection = $db->getConnection();

        $lastInsertedId = $connection->lastInsertId();

        return $lastInsertedId;
    } catch (\PDOException $e) {
        error_log('Database Error: ' . $e->getMessage());
        return false;
    }
}


public function getDataIdByColumnName($columnName)
{
    try {
        $query = "SELECT id FROM bike_data WHERE bike_column = :columnName";
        $statement = $this->db->getConnection()->prepare($query);
        $statement->bindParam(':columnName', $columnName, \PDO::PARAM_STR);
        $statement->execute();

        if ($statement) {
            $result = $statement->fetch(\PDO::FETCH_ASSOC);
            return $result['id'];
        } else {
            error_log("Erreur lors de l'exécution de la requête SQL : " . implode(", ", $this->db->getConnection()->errorInfo()));
            return null;
        }
    } catch (\PDOException $e) {
        if ($e->getCode() === 'HY000') {
            error_log("Timeout lors de l'exécution de la requête SQL : " . $e->getMessage());
            return null;
        } else {
            error_log("Erreur de requête SQL : " . $e->getMessage());
            return null;
        }
    }
}


public function getBikePseudo($bikeId)
    {
        try {
            $query = "SELECT data_value FROM bike_detail WHERE bike_id = :bikeId AND data_id = 81";
            $statement = $this->db->getConnection()->prepare($query);
            $statement->bindParam(':bikeId', $bikeId, \PDO::PARAM_INT);
            $statement->execute();

            if ($statement) {
                $result = $statement->fetch(\PDO::FETCH_ASSOC);
                return ($result !== false) ? $result['data_value'] : '';
            } else {
                return '';
            }
        } catch (\PDOException $e) {
            error_log("Erreur de base de données : " . $e->getMessage());
            return '';
        }
    }

public function getBikeBrand($bikeId)
    {
        try {
            $query = "SELECT data_value FROM bike_detail WHERE bike_id = :bikeId AND data_id = 1";
            $statement = $this->db->getConnection()->prepare($query);
            $statement->bindParam(':bikeId', $bikeId, \PDO::PARAM_INT);
            $statement->execute();

            if ($statement) {
                $result = $statement->fetch(\PDO::FETCH_ASSOC);
                return ($result !== false) ? $result['data_value'] : '';
            } else {
                return '';
            }
        } catch (\PDOException $e) {
            error_log("Erreur de base de données : " . $e->getMessage());
            return '';
        }
    }

    public function getBikeDetails($bikeId)
    {
        try {
            $query = "SELECT * FROM bike_detail WHERE bike_id = :bikeId";
            $statement = $this->db->getConnection()->prepare($query);
            $statement->bindParam(':bikeId', $bikeId, \PDO::PARAM_INT);
            $statement->execute();

            if ($statement) {
                return $statement->fetchAll(\PDO::FETCH_ASSOC);
            } else {
                return [];
            }
        } catch (\PDOException $e) {
            error_log("Erreur PDO: " . $e->getMessage());
            return [];
        }
    }

    public function getBikeDetailById($bikeId, $dataId)
    {

        try {
            $query = "SELECT * FROM bike_detail WHERE bike_id = :bikeId AND data_id = :dataId";
            $statement = $this->db->getConnection()->prepare($query);
            $statement->bindParam(':bikeId', $bikeId, \PDO::PARAM_INT);
            $statement->bindParam(':dataId', $dataId, \PDO::PARAM_INT);
            $statement->execute();
            if ($statement) {
                return $statement->fetchAll(\PDO::FETCH_ASSOC);
            } else {
                return [];
            }
        } catch (\PDOException $e) {
            error_log("Erreur PDO: " . $e->getMessage());
            return [];
        }
    }


    public function getBikeValueById($bikeId, $dataId)
    {

        try {
            $query = "SELECT data_value FROM bike_detail WHERE bike_id = :bikeId AND data_id = :dataId";
            $statement = $this->db->getConnection()->prepare($query);
            $statement->bindParam(':bikeId', $bikeId, \PDO::PARAM_INT);
            $statement->bindParam(':dataId', $dataId, \PDO::PARAM_INT);
            $statement->execute();
            if ($statement) {
                return $statement->fetchAll(\PDO::FETCH_ASSOC);
            } else {
                return '';
            }
        } catch (\PDOException $e) {
            error_log("Erreur PDO: " . $e->getMessage());
            return '';
        }
    }

    public function updateBikeDetail($bikeId, $dataId, $newValue)
    {
        set_time_limit(10);

         try {
            $query = "UPDATE bike_detail SET data_value = :newValue WHERE bike_id = :bikeId AND data_id = :dataId";
            $statement = $this->db->getConnection()->prepare($query);
            $statement->bindParam(':newValue', $newValue, \PDO::PARAM_STR);
            $statement->bindParam(':bikeId', $bikeId, \PDO::PARAM_INT);
            $statement->bindParam(':dataId', $dataId, \PDO::PARAM_INT);
            $statement->execute();

            return true;
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

    public function getColumnNameById($dataId)
    {
        try {
            $query = "SELECT bike_column FROM bike_data WHERE id = :dataId";
            $statement = $this->db->getConnection()->prepare($query);
            $statement->bindParam(':dataId', $dataId, \PDO::PARAM_INT);
            $statement->execute();

            if ($statement) {
                $result = $statement->fetch(\PDO::FETCH_ASSOC);
                return $result['bike_column'];
            } else {
                return '';
            }
        } catch (\PDOException $e) {
            return '';
        }
    }

}
