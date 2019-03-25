<?php namespace Hocmai\Recruitment\Components;

use Cms\Classes\ComponentBase;
use Hocmai\Recruitment\Models\Room;
use Hocmai\Recruitment\Models\Ranks;
use Hocmai\Recruitment\Models\Detail as NewDetails;
use Db;
class DetailJob extends ComponentBase
{
    public function componentDetails()
    {
        return [
            'name'        => 'DetailJob ',
            'description' => 'Chi tiết công việc'
        ];
    }

    public $detail_job;

    public $relate_job;

    public function defineProperties()
    {
        return [];
    }

    public function onRun() {
        $id = $this->param('id');

        $job  = Db::table('hocmai_recruitment_details')
            ->join('hocmai_recruitment_jobs', 'hocmai_recruitment_jobs.id', '=', 'hocmai_recruitment_details.jobs_id')
            ->join('hocmai_recruitment_ranks', 'hocmai_recruitment_ranks.id', '=', 'hocmai_recruitment_details.ranks_id')
           
            ->join('hocmai_recruitment_rooms','hocmai_recruitment_details.room_id','=', 'hocmai_recruitment_rooms.id' )
            ->where('hocmai_recruitment_details.id',$id)
            ->select('hocmai_recruitment_details.*','hocmai_recruitment_rooms.name as room_name', 'hocmai_recruitment_jobs.name as job_name','hocmai_recruitment_ranks.name as ranks_name')
            ->get()->toArray();
        $this->detail_job = $this->page['detail_job'] = $job;

        $relate_job = Db::table('hocmai_recruitment_details')
            // ->join('hocmai_recruitment_jobs', 'hocmai_recruitment_jobs.id', '=', 'hocmai_recruitment_details.jobs_id')
            ->join('hocmai_recruitment_ranks', 'hocmai_recruitment_ranks.id', '=', 'hocmai_recruitment_details.ranks_id')
           
            ->join('hocmai_recruitment_rooms','hocmai_recruitment_details.room_id','=', 'hocmai_recruitment_rooms.id' )
            ->where('hocmai_recruitment_details.room_id', $job[0]->room_id)
            ->select('hocmai_recruitment_details.*','hocmai_recruitment_rooms.name as room_name','hocmai_recruitment_ranks.name as ranks_name')
            ->get();
        $this->relate_job = $this->page['relate_job'] = $relate_job;
    }

    public function onDetail($job_id) {
        $detail_job = NewDetails::all()->where('jobs_id', $jobs_id);
        $this->detail_job = $detail_job->toArray();
        
    }
}
