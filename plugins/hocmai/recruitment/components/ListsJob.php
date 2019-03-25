<?php namespace Hocmai\Recruitment\Components;

use Cms\Classes\ComponentBase;
use October\Rain\Database\Collection;
use Hocmai\Recruitment\Models\Jobs as NewJobs;
use Hocmai\Recruitment\Models\Room as NewRooms;
use Hocmai\Recruitment\Models\Ranks as NewRanks;
use Hocmai\Recruitment\Models\Detail as NewDetails;
use Db;
use Input;
class ListsJob extends ComponentBase
{
    public function componentDetails()
    {
        return [
            'name'        => 'ListsJob',
            'description' => 'Danh sách công việc'
        ];
    }

    public function defineProperties()
    {
        return [];
    }

    public $list_job;

    public $lists_job;

    public function onRun() 
    {
        $list_jobs  = Db::table('hocmai_recruitment_details')
        ->join('hocmai_recruitment_jobs', 'hocmai_recruitment_jobs.id', '=', 'hocmai_recruitment_details.jobs_id')
        ->join('hocmai_recruitment_ranks', 'hocmai_recruitment_ranks.id', '=', 'hocmai_recruitment_details.ranks_id')
        ->join('hocmai_recruitment_rooms','hocmai_recruitment_details.room_id','=', 'hocmai_recruitment_rooms.id' )
        ->orderBy('hocmai_recruitment_details.deadline','desc')->take(15)
        ->select('hocmai_recruitment_details.id as id','hocmai_recruitment_details.status as status', 'hocmai_recruitment_details.deadline as deadline','hocmai_recruitment_rooms.name as room_name', 'hocmai_recruitment_jobs.name as job_name','hocmai_recruitment_ranks.name as ranks_name')
        ->get()->toArray();
        $this->lists_job = $this->page['lists_job'] = $list_jobs;

    }

    public function onMorejob() 
    {
        $more_job  = Db::table('hocmai_recruitment_details')
            ->join('hocmai_recruitment_jobs', 'hocmai_recruitment_jobs.id', '=', 'hocmai_recruitment_details.jobs_id')
            ->join('hocmai_recruitment_ranks', 'hocmai_recruitment_ranks.id', '=', 'hocmai_recruitment_details.ranks_id')
            ->join('hocmai_recruitment_rooms','hocmai_recruitment_details.room_id','=', 'hocmai_recruitment_rooms.id' )
            ->orderBy('hocmai_recruitment_details.deadline','desc')->take(30)
            ->select('hocmai_recruitment_details.id as id','hocmai_recruitment_details.status as status', 'hocmai_recruitment_details.deadline as deadline','hocmai_recruitment_rooms.name as room_name', 'hocmai_recruitment_jobs.name as job_name','hocmai_recruitment_ranks.name as ranks_name')
            ->get()->toArray();
        $this->page['more_job'] = $more_job;
        return [
            'more_job' => $more_job
        ];

    }

    /**
     * Get JOB by ID
        @JOB_ID
     */
    public function onDetailJob() {
        $job_id = Input::get('job_id');
        // $detail_job = NewDetails::where('id', $job_id)->get()->toArray();
        $detail_job  = Db::table('hocmai_recruitment_details')
            ->select('hocmai_recruitment_details.*','hocmai_recruitment_rooms.name as room_name', 'hocmai_recruitment_jobs.name as job_name','hocmai_recruitment_ranks.name as ranks_name')
            ->join('hocmai_recruitment_jobs', 'hocmai_recruitment_jobs.id', '=', 'hocmai_recruitment_details.jobs_id')
            ->join('hocmai_recruitment_ranks', 'hocmai_recruitment_ranks.id', '=', 'hocmai_recruitment_details.ranks_id')
            ->join('hocmai_recruitment_rooms','hocmai_recruitment_details.room_id','=', 'hocmai_recruitment_rooms.id' )
            ->where('hocmai_recruitment_details.id', $job_id)
            
            ->get()->toArray();
        $this->page['detail_job'] = $detail_job;
        
        return [
            'detail_job' => $detail_job
        ];
    }

    public function onSearchJob() 
    {
        $job_id = Input::get('job_id');
        $rank_id = Input::get('rank_id');

        $list_jobs  = Db::table('hocmai_recruitment_details')
            ->join('hocmai_recruitment_jobs', 'hocmai_recruitment_jobs.id', '=', 'hocmai_recruitment_details.jobs_id')
            ->join('hocmai_recruitment_ranks', 'hocmai_recruitment_ranks.id', '=', 'hocmai_recruitment_details.ranks_id')
            ->join('hocmai_recruitment_rooms','hocmai_recruitment_details.room_id','=', 'hocmai_recruitment_rooms.id' )
            ->where('hocmai_recruitment_details.jobs_id', $job_id)
            ->where('hocmai_recruitment_details.ranks_id', $rank_id)
            ->orderBy('hocmai_recruitment_details.deadline','desc')
            ->select('hocmai_recruitment_details.id as id','hocmai_recruitment_details.status as status', 'hocmai_recruitment_details.deadline as deadline','hocmai_recruitment_rooms.name as room_name', 'hocmai_recruitment_jobs.name as job_name','hocmai_recruitment_ranks.name as ranks_name')
            ->get()->toArray();

        $this->page['list_jobs_search'] = $list_jobs;

    }


    public function onListsJob()
    {
        $job_id = (int)post('job_id');
        $rank_id = (int)post('rank_id');

        /**
         * @var Collection $list_job
        */

        $list_job  = Db::table('hocmai_recruitment_details')
            ->join('hocmai_recruitment_jobs', 'hocmai_recruitment_jobs.id', '=', 'hocmai_recruitment_details.jobs_id')
            ->join('hocmai_recruitment_ranks', 'hocmai_recruitment_ranks.id', '=', 'hocmai_recruitment_details.ranks_id')
            ->where('hocmai_recruitment_details.jobs_id',$job_id)
            ->where('hocmai_recruitment_details.ranks_id',$rank_id)
            ->join('hocmai_recruitment_rooms','hocmai_recruitment_details.room_id','=', 'hocmai_recruitment_rooms.id' )
            ->select('hocmai_recruitment_details.id as id', 'hocmai_recruitment_details.deadline as deadline','hocmai_recruitment_rooms.name as room_name', 'hocmai_recruitment_jobs.name as job_name','hocmai_recruitment_ranks.name as ranks_name')

            ->get()->toArray();

        $result = [];
        foreach ($list_job as $job) {
            $result[] = [
                'id' => $job->id,
                'department' =>$job->room_name,
                'rank' => $job->ranks_name,
                'finish_date' => date_create_from_format('Y-m-d H:i:s', $job->deadline)->format('d-m-Y')
            ];
        }
        $this->page['result'] = $result;

    }
}
