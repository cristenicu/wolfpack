<?php

class Model extends Illuminate\Database\Eloquent\Model {
    protected $fillable = ['name'];
    public $timestamps = false;

    public function car()
    {
        return $this->hasMany('Car');
    }

    public function make()
    {
        return $this->belongsTo('Make');
    }
}
