<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHoroscopesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('horoscopes', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name')->comment('星座名稱');
            $table->text('entirety')->comment('整體運勢');
            $table->text('love')->comment('愛情運勢');
            $table->text('career')->comment('事業運勢');
            $table->text('wealth')->comment('財富運勢');
            $table->tinyInteger('status')->default(1)->comment('狀態');
            $table->softDeletes();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('horoscopes');
    }
}
