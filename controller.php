<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
spl_autoload_register(function ($class_name) {
    include "lib/" . strtolower($class_name) . '.php';
});

$action = isset($_GET['action']) ? htmlspecialchars($_GET['action']) : '';

$answer = [];
switch ($action) {
    case 'getData':
        require_once "model/getData.php";
        break;
    case 'putData':
        require_once "model/putData.php";
        break;
    default:
        $answer['answer'] = 'error';
        $answer['code'] = '202';
        $answer['data'] = 'Invalid action';
        break;
}

echo json_encode($answer);
