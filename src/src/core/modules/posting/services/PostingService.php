<?php

namespace Core\Modules\Posting\Services;
use Core\Library\Repositories\RepositoryInterface;

class PostingService
{

    private $postingRepository;

    public function __construct(RepositoryInterface $postingRepository)
    {
        $this->postingRepository = $postingRepository;
    }

    function addPosting($request){
        $this->postingRepository->create([
            'judul_post' => $request['judul_post'],
            'nama_poster' => $request['nama_poster'],
            'isi_post' => $request['isi_post']
        ]);
    }

    function getPostings($request){
        return $this->postingRepository->findAll([]);
    }
}