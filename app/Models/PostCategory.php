<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Post;
class PostCategory extends Model
{
    protected $fillable=['name','slug','status','color'];
protected $table="chatter_categories";
    public function post(){
        return $this->hasMany('App\Models\Post','post_cat_id','id')->where('status','active');
    }

    public static function getBlogByCategory($slug){
        return PostCategory::with('post')->where('slug',$slug)->first();
    }
}
