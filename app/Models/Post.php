<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{

    protected $table = 'chatter_discussion';
    public $timestamps = true;
    protected $fillable = ['title', 'chatter_category_id', 'user_id', 'slug', 'color'];

    public function user()
    {
        return $this->belongsTo(config('chatter.user.namespace'));
    }

    public function category()
    {
        return $this->belongsTo(Models::className(Category::class), 'chatter_category_id');
    }

    public function posts()
    {
        return $this->hasMany(Models::className(Post::class), 'id','chatter_discussion_id');
    }

    public function post()
    {
        return $this->hasMany(Models::className(Post::class), 'chatter_discussion_id')->orderBy('created_at', 'ASC');
    }

    public function postsCount()
    {
        return $this->posts()
        ->selectRaw('chatter_discussion_id, count(*)-1 as total')
        ->groupBy('chatter_discussion_id');
    }

    public function users()
    {
        return $this->belongsToMany(config('chatter.user.namespace'), 'chatter_user_discussion', 'discussion_id', 'user_id');
    }
    public static function getAllPost(){
                return Post::with(['category','user'])->orderBy('id','DESC')->paginate(10);
            }


//     protected $fillable=['id','chatter_discussion_id','user_id','body','created_at','updated_at','markdown','locked'];
//     protected $table = 'chatter_discussion';
// // 'id','chatter_discussion_id','user_id','body','created_at','updated_at','markdown','locked'
    
//     public function cat_info(){
//         return $this->hasOne('App\Models\PostCategory','id','post_cat_id');
//     }
//     // public function tag_info(){
//     //     return $this->hasOne('App\Models\PostTag','id','post_tag_id');
//     // }

//     public function author_info(){
//         return $this->hasOne('App\User','id','added_by');
//     }
//     public static function getAllPost(){
//         return Post::with(['cat_info','author_info'])->orderBy('id','DESC')->paginate(10);
//     }
//     //// public function get_comments(){
//   //  //     return $this->hasMany('App\Models\PostComment','post_id','id');
//   //  // }
//     // public static function getPostBySlug($slug){
//     //     return Post::with(['tag_info','author_info'])->where('slug',$slug)->where('status','active')->first();
//     // }

//     // public function comments(){
//     //     return $this->hasMany(PostComment::class)->whereNull('parent_id')->where('status','active')->with('user_info')->orderBy('id','DESC');
//     // }
//     // public function allComments(){
//     //     return $this->hasMany(PostComment::class)->where('status','active');
//     // }


//    // // public static function getProductByCat($slug){
//   //  //     // dd($slug);
//   //  //     return Category::with('products')->where('slug',$slug)->first();
//  //   //     // return Product::where('cat_id',$id)->where('child_cat_id',null)->paginate(10);
//  //   // }

//   //  // public static function getBlogByCategory($id){
//   //  //     return Post::where('post_cat_id',$id)->paginate(8);
//   //  // }
//     // public static function getBlogByTag($slug){
//     //     // dd($slug);
//     //     return Post::where('tags',$slug)->paginate(8);
//     // }

    public static function countActivePost(){
        $data=Post::where('status','active')->count();
        if($data){
            return $data;
        }
        return 0;
    }
}
