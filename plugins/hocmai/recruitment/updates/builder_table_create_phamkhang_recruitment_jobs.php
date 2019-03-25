<?php namespace hocmai\Recruitment\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreatehocmaiRecruitmentJobs extends Migration
{
    public function up()
    {
        Schema::create('hocmai_recruitment_jobs', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->text('name');
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('hocmai_recruitment_jobs');
    }
}
