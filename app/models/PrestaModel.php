<?php

namespace Application\Models;

class PrestaModel
{
    private $db;

    public function __construct()
    {
        $this->db = new Database();
    }

    public function getPrestationValueById($prestaId)
    {
        set_time_limit(10);

        try {
            $query = "SELECT prestation FROM presta WHERE id_prestation = :prestaId";
            $statement = $this->db->getConnection()->prepare($query);
            $statement->bindParam(':prestaId', $prestaId, \PDO::PARAM_INT);
            $statement->execute();

            if ($statement) {
                $result = $statement->fetch(\PDO::FETCH_ASSOC);
                return $result['prestation'];
            } else {
                error_log("Erreur lors de l'exécution de la requête SQL : " . implode(", ", $this->db->getConnection()->errorInfo()));
                return null;
            }
        } catch (\PDOException $e) {
            error_log("Erreur de base de données : " . $e->getMessage());
            return null;
        }
    }


public function getAllPrestations()
{
    try {
        $query = "SELECT id_prestation, prestation FROM presta";
        $statement = $this->db->getConnection()->prepare($query);
        $statement->execute();

        return $statement->fetchAll(\PDO::FETCH_ASSOC);
    } catch (\PDOException $e) {
        throw new \Exception("Erreur de base de données : " . $e->getMessage());
    }
}


}


