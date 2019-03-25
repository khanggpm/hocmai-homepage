<?php namespace Hocmai\Recruitment\Models;

use Model;

use Hocmai\Recruitment\Models\Ranks;

use Hocmai\Recruitment\Models\Room;
/**
 * Model
 */
class Detail extends Model
{
    use \October\Rain\Database\Traits\Validation;
    

    /**
     * @var string The database table used by the model.
     */
    


    

    /**
     * @var array Validation rules
     */
    
    public $belongsTo = [
        'ranks' => 'Hocmai\Recruitment\Models\Ranks',
        'room' => 'Hocmai\Recruitment\Models\Room',
        'jobs' => 'Hocmai\Recruitment\Models\Jobs',
    ];

    // public $belongsTo = [
    //     'room' => 'hocmai\Recruitment\Models\Room'
    // ];

    // public function getRoomIdOptions() {
    //     return Room::all()->lists('name', 'id');
    // }

    public $rules = [
    ];

    public $table = 'hocmai_recruitment_details';

    public function getListRecruitmentDetail() 
    {
        return ['1','2'];
    }
}
