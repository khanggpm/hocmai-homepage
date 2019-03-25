<?php namespace hocmai\Recruitment\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreatehocmaiRecruitmentRooms extends Migration
{
    public function up()
    {
        Schema::create('hocmai_recruitment_rooms', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->string('name');
            $table->string('slug');
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('hocmai_recruitment_rooms');
    }
}
