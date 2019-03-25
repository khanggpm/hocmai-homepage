<?php namespace Hocmai\Homepage\Models;

use Model;
use Db;

/**
 * Model
 */
class Info extends Model
{
    use \October\Rain\Database\Traits\Validation;
    

    /**
     * @var string The database table used by the model.
     */
    

    /**
     * @var array Validation rules
     */
    public $rules = [
    ];

    public function getStatusOptions()
    {
        return [
            '1'=>'Khối xoay',
            '2'=>'Chương trình giáo dục'
        ];
    }

    public $belongsToMany = [
        'products' => [
            'Hocmai\Homepage\Models\Products',
            'table' =>'hocmai_homepage_info_products',
        ]
    ];

    public function scopeProducts1() {
        $info = DB::table('hocmai_homepage_info_products')
            ->join('hocmai_homepage_info', 'hocmai_homepage_info.id', '=', 'hocmai_homepage_info_products.info_id')
            ->join('hocmai_homepage_products', 'hocmai_homepage_products.id', '=', 'hocmai_homepage_info_products.products_id')
            ->select(
                'hocmai_homepage_products.image as image2',
                'hocmai_homepage_info.*',
                'hocmai_homepage_products.*',
                'hocmai_homepage_info.image as image1'
            )
            ->get();

        return $info;
    }

    public function scopeProducts()
    {
        return $this->belongsToMany('Hocmai\Homepage\Models\Info', 'hocmai_homepage_info_products',
          'info_id', 'products_id');
    }

    public function scopeTest() {
        $query = DB::table('products')
        ->join('products_nutrients as protein', function ($join) {
            $join->on('products.id', '=', 'protein.products_id');
            $join->where('protein.nutrients_id', '=', 1);
        })
        ->join('products_nutrients as fats', function ($join) {
            $join->on('products.id', '=', 'fats.products_id');
            $join->where('fats.nutrients_id', '=', 2);
        })
        ->join('products_nutrients as carbo', function ($join) {
            $join->on('products.id', '=', 'carbo.products_id');
            $join->where('carbo.nutrients_id', '=', 3);
        })
        ->select('name', 'protein.value as protein', 'fats.value as fats', 'carbo.value as carbo');

      

    }

    public $table = 'hocmai_homepage_info';
}
