<?php namespace hocmai\Recruitment\Components;

use Cms\Classes\ComponentBase;
use hocmai\Recruitment\Models\Room;
use hocmai\Recruitment\Models\Ranks;
use hocmai\Recruitment\Models\Detail;
use Db;

class DetailList extends ComponentBase
{
    public $rooms;

    public $ranks;

    public $listRecuitments;

    public function componentDetails()
    {
        return [
            'name'        => 'Detail List',
            'description' => 'Danh sách việc làm'
        ];
    }

    public function defineProperties()
    {
        return [];
    }

    public function onRun() {
        // $this->listRecuitments = Detail::all()->where('id', 1)->take(1);


        $this->listRecuitments = $listRecuitments = Db::table('hocmai_recruitment_details')
        ->join('hocmai_recruitment_rooms', 'hocmai_recruitment_rooms.id', '=', 'hocmai_recruitment_details.room_id')
        ->join('hocmai_recruitment_ranks', 'hocmai_recruitment_ranks.id', '=', 'hocmai_recruitment_details.ranks_id')
        ->select('hocmai_recruitment_details.*', 'hocmai_recruitment_rooms.name as room_name','hocmai_recruitment_ranks.name as ranks_name')

        ->get()->all();

    }

    public function onSubmitForm() {
        dump('123');
    }

    public function onSubmitContactForm()
    {
        // ...
    }
}
<?php namespace hocmai\Recruitment\Components;

use Cms\Classes\ComponentBase;
use hocmai\Recruitment\Models\Room;
use hocmai\Recruitment\Models\Ranks;
use hocmai\Recruitment\Models\Detail;
use Db;

class DetailList extends ComponentBase
{
    public $rooms;

    public $ranks;

    public $listRecuitments;

    public function componentDetails()
    {
        return [
            'name'        => 'Detail List',
            'description' => 'Danh sách việc làm'
        ];
    }

    public function defineProperties()
    {
        return [];
    }

    public function onRun() {
        // $this->listRecuitments = Detail::all()->where('id', 1)->take(1);


        $this->listRecuitments = $listRecuitments = Db::table('hocmai_recruitment_details')
        ->join('hocmai_recruitment_rooms', 'hocmai_recruitment_rooms.id', '=', 'hocmai_recruitment_details.room_id')
        ->join('hocmai_recruitment_ranks', 'hocmai_recruitment_ranks.id', '=', 'hocmai_recruitment_details.ranks_id')
        ->select('hocmai_recruitment_details.*', 'hocmai_recruitment_rooms.name as room_name','hocmai_recruitment_ranks.name as ranks_name')

        ->get()->all();

    }

    public function onSubmitForm() {
        dump('123');
    }

    public function onSubmitContactForm()
    {
        // ...
    }
}
