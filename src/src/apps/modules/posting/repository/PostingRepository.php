<?php
namespace App\Posting\Repositories;

use App\Posting\Models\Posting;
use App\Library\Orm\AbstractRepository;

class PostingRepository extends AbstractRepository
{

    /**
     * Model class name for the concrete implementation
     *
     * @return string
     */
    public function modelName()
    {
        return Posting::class;
    }
}