<?php

error_reporting(E_ALL);
ini_set('display_errors', 1);

require 'vendor/autoload.php';
require 'config.php';

use Illuminate\Database\Capsule\Manager as Capsule;

$capsule = new Capsule;

$capsule->addConnection([
    'driver'    => $config['driver'],
    'host'      => $config['host'],
    'database'  => $config['database'],
    'username'  => $config['username'],
    'password'  => $config['password'],
    'charset'   => $config['charset'],
    'collation' => $config['collation'],
    'prefix'    => $config['prefix'],
]);

$capsule->setAsGlobal();
$capsule->bootEloquent();

require 'main.html';
