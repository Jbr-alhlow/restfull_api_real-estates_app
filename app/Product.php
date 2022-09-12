<?php

 namespace App;

 use Illuminate\Database\Eloquent\Model;

 class Product extends Model
 {
     protected $fillable = [
         'name', 'price','type','details','location','area','state','position','img1','img2','img3','img4','img5','room'
     ];


 public function user()
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }}
