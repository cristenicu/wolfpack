<?php

class Make extends Illuminate\Database\Eloquent\Model {
    protected $fillable = ['name'];
    public $timestamps = false;

    public function car()
    {
        return $this->hasMany('Car');
    }

    public function model()
    {
        return $this->hasMany('Model');
    }
}
