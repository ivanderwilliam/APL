<?php
namespace App\Controllers\Api;

use Phalcon\Http\Request;
use Phalcon\Mvc\Controller;

class AplController extends Controller
{

    /**
     * @Get(
     *     '/'
     *     )
     */
    public function indexAction() {
        var_dump('indexApl');
        die();
    }

    /**
     * @Get(
     *     '/satu'
     * )
     */
    public function getAplsAction() {
        var_dump('getApls');
        die();
    }

    /**
     * @Get(
     *     '/{user_id}'
     *     )
     */
    public function getAplAction() {
        var_dump('getApl');
        $request = $this->dispatcher;
        var_dump($request->getParam('user_id'));
        die();
    }

    /**
     * @Post(
     *     '/tiga'
     * )
     */
    public function addAplAction() {
        var_dump('addApl');
        die();
    }



}
