<?php namespace Hocmai\Recruitment\Controllers;

use Backend\Classes\Controller;
use BackendMenu;

class Slider extends Controller
{
    public $implement = [    ];
    
    public function __construct()
    {
        parent::__construct();
        BackendMenu::setContext('Hocmai.Recruitment', 'main-menu-item', 'side-menu-item5');
    }
}
