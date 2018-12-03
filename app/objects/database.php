<?php
class Database
{
  
    // specify your own database credentials
    private $host = APPDB_HOSTNAME;
    private $db_name = APPDB_NAME;
    private $username = APPDB_USERNAME;
    private $password = APPDB_PASSWORD;
    public $conn;
  
    // get the database connection
    public function get_connection()
    {
  
        $this->conn = null;
  
        try{
            $this->conn = new PDO("mysql:host=" . $this->host . ";dbname=" . $this->db_name, $this->username, $this->password);
        }catch(PDOException $exception){
            echo "Connection error: " . $exception->getMessage();
        }
  
        return $this->conn;
    }
}
?>