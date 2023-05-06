<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PostComment extends Model
{
    protected $fillable=['user_id','chatter_discussion_id','id','comment','replied_comment','parent_id','status'];
protected $table="chatter_post";
    public function user_info(){
        return $this->hasOne('App\User','id','user_id');
    }
    public static function getAllComments(){
        return PostComment::with('user_info')->paginate(10);
    }

    public static function getAllUserComments(){
        return PostComment::where('user_id',auth()->user()->id)->with('user_info')->paginate(10);
    }

    public function post(){
        return $this->belongsTo(Post::class,'chatter_discussion_id','id');
    }

    public function replies(){
        return $this->hasMany(PostComment::class,'parent_id')->where('status','active');
    }
}
