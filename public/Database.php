<?php


class Database
{
    private $dbHost = 'mysql';
    private $dbUsername = 'alina';
    private $dbPassword = 123456;
    private $dbName = 'neurony';
    private $port = 3306;
    private $connection;

    public static $instance = null;

    private function __construct()
    {
        $this->connection = mysqli_connect($this->dbHost, $this->dbUsername, $this->dbPassword, $this->dbName, $this->port);
    }

    public static function getInstance()
    {
        if (self::$instance == null){
            self::$instance = new Database();
        }

        return self::$instance;
    }

    public function query($query)
    {
        return $this->connection->query($query);
    }

    public function escapeString(string $value)
    {
        return $this->connection->real_escape_string($value);
    }
}