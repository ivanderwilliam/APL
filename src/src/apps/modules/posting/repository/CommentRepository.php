<?php
/**
 * Created by PhpStorm.
 * User: falnerz
 * Date: 5/15/19
 * Time: 10:17 PM
 */

namespace App\Posting\Repositories;


use App\Library\Orm\AbstractRepository;
use App\Posting\Models\Comment;

class CommentRepository extends AbstractRepository
{

    /**
     * Model class name for the concrete implementation
     *
     * @return string
     */
    public function modelName()
    {
        return Comment::class;
    }
}