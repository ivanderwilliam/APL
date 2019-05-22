<?php

namespace App\Posting\Models;


use App\Library\Orm\BaseModel;

class Posting extends BaseModel
{
    public function initialize()
    {
        $this->setSource('postings');
        $this->hasMany('id_post',Comment::class,'post_id',array('alias' => 'Comment'));
    }

    public function getIdentifier()
    {
        return $this->id_post;
    }
}