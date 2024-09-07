<?php

$sql = "
SELECT 
    u.first_name,
    u.last_name,
    p.title,
    p.price,
    o.created_at
FROM 
    user_order o
JOIN 
    users u ON o.user_id = u.id
JOIN 
    products p ON o.product_id = p.id
WHERE 
    o.user_id = :user_id
ORDER BY 
    p.title ASC,
    p.price ASC;";

$user_id = filter_input(INPUT_GET, "user_id", FILTER_VALIDATE_INT);

if ($user_id === false) {
    $answer['answer'] = 'error';
    $answer['code'] = '202';
    $answer['data'] = 'Invalid user ID!';
} else {

    $db = DB::connect();
    $result = $db->prepare($sql);
    $result->execute(array("user_id" => $user_id));
    $data = $result->fetchAll();
    unset($data);
    $answer['answer'] = 'ok';

    if (is_array($data) && count($data) > 0) {
        $answer['code'] = '200';
        $answer['data'] = $data;
    } else {
        $answer['code'] = '201';
        $answer['data'] = 'Wrong user ID!';
    }
}