<?php
class Home extends BaseController
{
    public function index()
    {

        $data = [
            'title' => 'Homepage van de webapp',
        ];
        $this->view('home/index', $data);
    }
}
