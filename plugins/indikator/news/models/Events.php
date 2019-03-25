<?php namespace Indikator\News\Models;

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
    public $table = 'indikator_news_events';

    /**
     * @var array Validation rules
     */
    public $rules = [
    ];
}
