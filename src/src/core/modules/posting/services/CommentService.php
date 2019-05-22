<?php
namespace Core\Modules\Posting\Services;

use Core\Library\Repositories\RepositoryInterface;

class CommentService
{
    private $commentRepository;

    public function __construct(RepositoryInterface $commentRepository)
    {
        $this->commentRepository = $commentRepository;
    }

    public function addComment($request){
        $this->commentRepository->create([
            'post_id' => $request['post_id'],
            'isi_komen' => $request['isi_komen'],
            'komentator' => $request['komentator']
        ]);
    }


}