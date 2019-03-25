<?php namespace hocmai\Recruitment\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreatehocmaiRecruitmentDetails extends Migration
{
    public function up()
    {
        Schema::create('hocmai_recruitment_details', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->string('name');
            $table->integer('room_id')->nullable();
            $table->integer('ranks_id')->nullable();
            $table->string('slug')->nullable();
            $table->string('job_desc');
            $table->string('job_requirements');
            $table->string('job_position');
            $table->string('entitlements');
            $table->string('working_time');
            $table->string('slots');
            $table->string('work_experience');
            $table->string('work_address');
            $table->string('wage');
            $table->string('deadline_type');
            $table->string('contact');
            $table->string('email');
            $table->integer('phone');
            $table->timestamp('created_at')->nullable();
            $table->timestamp('updated_at')->nullable();
            $table->dateTime('deadline');
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('hocmai_recruitment_details');
    }
}
