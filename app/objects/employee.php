<?php
class Employee
{
    private $table_name = "employees";
    private $conn;

    public $employee_fname;
    public $employee_lname;
    public $employee_mname;
    public $employee_suffix;
    public $employee_maiden_name;
    public $employee_dob;
    public $employee_gender;
    public $employee_id_number;

    function __construct($db)
    {
        $this->conn = $db;
    }

    function create()
    {
        $query = "INSERT INTO {$this->table_name}". 
                " SET". 
                " employee_fname = :employee_fname,". 
                " employee_lname = :employee_lname,". 
                " employee_mname = :employee_mname,". 
                " employee_suffix = :employee_suffix,". 
                " employee_maiden_name = :employee_maiden_name,". 
                " employee_dob = :employee_dob,". 
                " employee_gender = :employee_gender,". 
                " employee_id_number = :employee_id_number";
        try
        {
            $stmt = $this->conn->prepare($query);

            // posted values
            $this->employee_fname = htmlspecialchars(strip_tags($this->employee_fname));
            $this->employee_lname = htmlspecialchars(strip_tags($this->employee_lname));
            $this->employee_mname = htmlspecialchars(strip_tags($this->employee_mname));
            $this->employee_suffix = htmlspecialchars(strip_tags($this->employee_suffix));
            $this->employee_maiden_name = htmlspecialchars(strip_tags($this->employee_maiden_name));
            $this->employee_dob = htmlspecialchars(strip_tags($this->employee_dob));
            $this->employee_gender = htmlspecialchars(strip_tags($this->employee_gender));
            $this->employee_id_number = htmlspecialchars(strip_tags($this->employee_id_number));

            // bind values
            $stmt->bindParams(":employee_fname", $this->employee_fname);
            $stmt->bindParams(":employee_lname", $this->employee_lname);
            $stmt->bindParams(":employee_mname", $this->employee_mname);
            $stmt->bindParams(":employee_suffix", $this->employee_suffix);
            $stmt->bindParams(":employee_maiden_name", $this->employee_maiden_name);
            $stmt->bindParams(":employee_dob", $this->employee_dob);
            $stmt->bindParams(":employee_gender", $this->employee_gender);
            $stmt->bindParams(":employee_id_number", $this->employee_id_number);

            $stmt->execute();
        }
        catch (Exception $e)
        {
            $error_message = "ERROR ".__FUNCTION__. "(): ";
            $error_message .= $e->getMessage();
            echo $error_message;
            die();
        }

        return true;
        
    }

    function read_all()
    {
        $query = "SELECT * FROM {$this->table_name} ORDER BY employee_lname ASC";
        try
        {
            $stmt = $this->conn->prepare($query);
            $stmt->execute();
        }
        catch(Exception $e)
        {
            $error_message = "ERROR ".__FUNCTION__. "(): ";
            $error_message .= $e->getMessage();
            echo $error_message;
            die();
            // return [];
        }

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    function read_limited($from_record_num, $records_per_page)
    {
        $query = "SELECT employee_id, employee_fname, employee_lname, employee_mname, employee_dob, employee_id_number, employee_gender " . 
            "FROM {$this->table_name} ORDER BY employee_lname ASC LIMIT {$from_record_num}, {$records_per_page}";
        try
        {
            $stmt = $this->conn->prepare($query);
            $stmt->execute();
        }
        catch(Exception $e)
        {
            $error_message = "ERROR ".__FUNCTION__. "(): ";
            $error_message .= $e->getMessage();
            echo $error_message;
            die();
            // return [];
        }

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}