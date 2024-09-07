<?php

$db = DB::connect();

foreach ($_GET['books'] as $book) {
    if (strlen($book[0]) > 100 || !is_numeric($book[1]) || $book[1] > 9999999999.99) {
        $answer['answer'] = 'error';
        $answer['code'] = '203';
        $answer['data'] = 'Wrong input data!';
        return $answer;
    }
    $sql = "INSERT INTO products (title, price) VALUES (:title, :price)";
    $result = $db->prepare($sql);
    $result->execute(array("title" => $book[0], "price" => $book[1]));
    unset($result);
}

$answer['answer'] = 'ok';
$answer['code'] = '200';

