<?php

class DB
{
    private function __construct()
    {
    }

    private function __clone()
    {
    }

    private function __wakeup()
    {
    }

    public static function connect()
    {
        try {
            require $_SERVER['DOCUMENT_ROOT'] . '/config.inc.php';
            return new PDO('mysql:host=' . $db_host . ';port=' . $db_port . ';dbname=' . $db, $dbuser, $dbpwd, array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES "UTF8"'));
        } catch (PDOException $e) {
            echo "Error!: " . $e->getMessage() . "<br />";
            die();
        }
    }
}
