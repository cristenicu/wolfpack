<?php

class Car extends Illuminate\Database\Eloquent\Model
{
    protected $fillable = ['dealer_id', 'model_id', 'km', 'year', 'price'];
    public $timestamps = false;

    public function dealer()
    {
        return $this->belongsTo('Dealer');
    }

    public function make()
    {
        return $this->belongsTo('Make');
    }

    public function model()
    {
        return $this->belongsTo('Model');
    }
}
