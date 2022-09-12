<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Todo extends Model
{
    protected $table = "todos";

    protected $fillable = [
        'name', 'description', 'user_id', 'status'
    ];

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }
    public function officer()
    {
        return $this->belongsTo(User::class, 'officer_id', 'id');
    }

    public function comments()
    {
        return $this->hasMany(Comment::class);
    }

    public function product()
    {
        return $this->belongsTo(product::class, 'user_id', 'user_id');
    }


}
