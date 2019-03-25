<?php namespace hocmai\Recruitment\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableDeletehocmaiRecruitmentRanks extends Migration
{
    public function up()
    {
        Schema::dropIfExists('hocmai_recruitment_ranks');
    }
    
    public function down()
    {
        Schema::create('hocmai_recruitment_ranks', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->string('name', 191);
            $table->string('slug', 191);
        });
    }
}
