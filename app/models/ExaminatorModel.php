<?php

class ExaminatorModel
{
    private $db;

    public function __construct()
    {
        $this->db = new Database();
    }

    public function getExaminators()
    {

        $sql = "SELECT
                       EXAM.Voornaam
                      ,EXAM.Tussenvoegsel
                      ,EXAM.Achternaam
                      ,CONCAT(EXAM.Voornaam, ' ', EXAM.Tussenvoegsel, ' ', EXAM.Achternaam) AS naam
                      ,EXAN.Datum
                      ,EXAN.Rijbewijscategorie
                      ,EXAN.Rijschool
                      ,EXAN.Stad
                      ,EXAN.Uitslag
        
                FROM Examinator AS EXAM
                
                INNER JOIN ExamenPerExaminator AS EXPE
                
                        ON EXPE.ExaminatorId = EXAM.Id

                INNER JOIN Examen AS EXAN

                        ON EXAN.Id = EXPE.ExamenId";

        $this->db->query($sql);

        return $this->db->resultSet();
    }
}
