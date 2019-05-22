<?php
namespace App\Posting\Controllers\Web;

use Core\Modules\Posting\Services\CommentService;
use Phalcon\Mvc\Controller;

/**
 * Class InventoryController
 * @property CommentService commentService
 */
class CommentController extends Controller
{

    public function indexAction() {
        $request = $this->request;
        $response = $this->response;

        $this->commentService->addComment($request->getPost());
        $response->redirect('http://localhost:8009/posting/posting  ');
        $response->send();
//        $this->view->p
    }


}