<?php
namespace App\Posting\Models;

use App\Library\Orm\BaseModel;



class Comment extends BaseModel
{
    public function initialize()
    {
        $this->setSource('comments');
    }

    public function getIdentifier()
    {
        return $this->id_comment;
    }
}