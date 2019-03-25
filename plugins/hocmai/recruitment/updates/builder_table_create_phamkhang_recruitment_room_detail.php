<?php namespace hocmai\Recruitment\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreatehocmaiRecruitmentRoomDetail extends Migration
{
    public function up()
    {
        Schema::create('hocmai_recruitment_room_detail', function($table)
        {
            $table->engine = 'InnoDB';
            $table->integer('room_id');
            $table->integer('detail_id');
            $table->primary(['room_id','detail_id']);
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('hocmai_recruitment_room_detail');
    }
}
