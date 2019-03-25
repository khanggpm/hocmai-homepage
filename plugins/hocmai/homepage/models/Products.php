<?php namespace Hocmai\Homepage\Models;

use Model;

/**
 * Model
 */
class Products extends Model
{
    use \October\Rain\Database\Traits\Validation;
    

    /**
     * @var string The database table used by the model.
     */
    public $table = 'hocmai_homepage_products';

    /**
     * @var array Validation rules
     */
    public $rules = [
    ];

    public $belongsToMany = [
        'products' => [
            'Hocmai\Homepage\Models\Info',
            'table' =>'hocmai_homepage_info'
        ]
    ];

  
}
