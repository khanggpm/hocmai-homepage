<?php namespace Hocmai\Homepage\Models;

use Model;

/**
 * Model
 */
class Events extends Model
{
    use \October\Rain\Database\Traits\Validation;
    

    /**
     * @var string The database table used by the model.
     */
    public $table = 'hocmai_homepage_events';

    /**
     * @var array Validation rules
     */
    public $rules = [
    ];
}
