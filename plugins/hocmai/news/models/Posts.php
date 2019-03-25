<?php namespace Hocmai\News\Models;

use Model;

use Hocmai\News\Models\Category;

/**
 * Model
 */
class Posts extends Model
{
    use \October\Rain\Database\Traits\Validation;
    
    public $belongsTo = [
        'category' => 'Hocmai\News\Models\Category'
    ];

    /**
     * @var string The database table used by the model.
     */
    public $table = 'hocmai_news_posts';

    /**
     * @var array Validation rules
     */
    public $rules = [
    ];
}
