<?php

namespace App\Posting\Controllers\Web;

use App\Posting\Models\Posting;
use Core\Modules\Posting\Services\PostingService;
use Phalcon\Mvc\Controller;
/**
 * @property PostingService postingService
 */
class PostingController extends Controller
{
    public function indexAction(){
        $request = $this->request;
        $response = $this->response;
        switch ($request->getMethod()){
            case 'POST':
                $this->postingService->addPosting($request->getPost());
                break;
            case 'GET':
                $this->view->postings = $this->postingService->getPostings(null);
                break;
        }
        $this->view->pick('index');
    }

}