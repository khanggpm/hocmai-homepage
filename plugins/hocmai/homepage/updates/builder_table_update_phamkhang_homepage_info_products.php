<?php namespace hocmai\Homepage\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdatehocmaiHomepageInfoProducts extends Migration
{
    public function up()
    {
        Schema::rename('hocmai_homepage_', 'hocmai_homepage_info_products');
    }
    
    public function down()
    {
        Schema::rename('hocmai_homepage_info_products', 'hocmai_homepage_');
    }
}
