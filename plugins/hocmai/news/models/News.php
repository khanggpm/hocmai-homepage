<?php namespace Hocmai\News\Models;

use Model;

use Hocmai\News\Models\Category;
/**
 * Model
 */
class News extends Model
{
    use \October\Rain\Database\Traits\Validation;
    
    public $belongsTo = [
        'cate' => 'Hocmai\News\Models\Category',
    ];

    /**
     * @var string The database table used by the model.
     */
    

    /**
     * @var array Validation rules
     */
    public $rules = [
    ];

    public $table = 'hocmai_news_news';
    
}
