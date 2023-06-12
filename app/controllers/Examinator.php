<?php

class Examinator extends BaseController
{
    private $examinatorModel;
    public function __construct()
    {
        $this->examinatorModel = $this->model('ExaminatorModel');
    }
    public function index()
    {
        /**
         * Haal alle examinator op uit de database (model)
         */
        $examinators = $this->examinatorModel->getExaminators();

        /**
         * Maak de rows voor de tbody in de view
         */
        $tableRows = '';

        foreach ($examinators as $examinator) {
            // $datum = date_create($examinator->DatumInDienst);
            // $datum = date_format($datum, 'd-m-Y');
            $tableRows .=  "<tr>
                                    <td>$examinator->naam</td>
                                    <td>$examinator->Datum</td>
                                    <td>$examinator->Rijbewijscategorie</td>
                                    <td>$examinator->Rijschool</td>
                                    <td>$examinator->Stad</td>
                                    <td>$examinator->Uitslag</td> 
                            </tr>";
        }

        /**
         * Het $data-array geeft alle belangrijke info door aan de view
         */
        $data = [
            'title' => 'Examinator in dienst',
            'tableRows' => $tableRows
        ];

        $this->view('Examinator/index', $data);
    }
}
