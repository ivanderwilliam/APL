<?php

$loader = new \Phalcon\Loader();

/**
  * Load library namespace
  */
$loader->registerNamespaces(array(
    'App\Controllers\Api' => APP_PATH . '/controllers/api',
    'App\Controllers\Web' => APP_PATH . '/controllers/web'
));

$loader->register();
