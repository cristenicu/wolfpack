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



$action = $_GET['action'];
$api = new Api();

echo json_encode($api->$action());

class Api {
    function getCars() {
        $carsCollection = Car::all();

        if (isset($_GET['filters'])) {
            $filters = json_decode($_GET['filters']);

            foreach ($filters as $filter => $value) {
                if ($value != "")
                $carsCollection = $carsCollection->where($filter, $value);
            }
        }
        $cars = [];

        foreach ($carsCollection as $key => $car) {
            $cars[] = [
                'id' => $car->id,
                'dealer' => $car->dealer,
                'make' => $car->make,
                'model' => $car->model,
                'km' => $car->km,
                'year' => $car->year,
                'price' => $car->price
            ];
        }
        return $cars;
    }

    function getFormData() {
        return [
            'dealers' => Dealer::all()->toArray(),
            'makes' => Make::all()->toArray(),
            'models' => Model::all()->toArray()
        ];
    }

    function addCar() {
        $data = json_decode($_GET['data']);
        $car = new Car();
        $car->dealer_id = $data->dealer;
        $car->make_id = $data->make;
        $car->model_id = $data->model;
        $car->km = $data->km;
        $car->year = $data->year;
        $car->price = $data->price;
        $car->save();

        return 'OK';
    }
}
