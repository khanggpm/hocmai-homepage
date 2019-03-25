<?php namespace Hocmai\Recruitment\Models;

use Model;
use hocmai\Recruitment\Models\Room as NewsRoom;
/**
 * Model
 */
class Room extends Model
{
    use \October\Rain\Database\Traits\Validation;
    
    /*
     * Disable timestamps by default.
     * Remove this line if timestamps are defined in the database table.
     */
    public $timestamps = false;


    /**
     * @var string The database table used by the model.
     */
    public $table = 'hocmai_recruitment_rooms';

    /**
     * @var array Validation rules
     */
    public $rules = [
    ];

    public $rooms;

    public function defineProperties()
    {
        return [];
    }

    public function onRun() {
        $rooms = $this->rooms= NewsRoom::all();
    }
}
