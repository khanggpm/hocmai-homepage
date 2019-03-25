<?php namespace hocmai\Recruitment\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdatehocmaiRecruitmentDetails2 extends Migration
{
    public function up()
    {
        Schema::table('hocmai_recruitment_details', function($table)
        {
            $table->string('room', 10)->nullable();
            $table->string('ranks', 10)->nullable();
            $table->dropColumn('room_id');
            $table->dropColumn('ranks_id');
        });
    }
    
    public function down()
    {
        Schema::table('hocmai_recruitment_details', function($table)
        {
            $table->dropColumn('room');
            $table->dropColumn('ranks');
            $table->integer('room_id')->nullable();
            $table->integer('ranks_id')->nullable();
        });
    }
}
