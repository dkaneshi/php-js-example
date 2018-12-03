<?php
require_once("objects/database.php");
require_once("objects/employee.php");

$database = new Database();
$db = $database->get_connection();

$employee = new Employee();

if ($_POST)
{
    $employee->employee_fname = $_POST["employee_fname"];
    $employee->employee_lname = $_POST["employee_lname"];
    $employee->employee_mname = $_POST["employee_mname"];
    $employee->employee_suffix = $_POST["employee_suffix"];
    $employee->employee_maiden_name = $_POST["employee_maiden_name"];
    $employee->employee_dob = $_POST["employee_dob"];
    $employee->employee_gender = $_POST["employee_gender"];
    $employee->employee_id_number = $_POST["employee_id_number"];

    if ($employee->create())
    {
        echo "<div class='alert alert-success'>Employee was created.</div>";
    }
    else
    {
        echo "<div class='alert alert-danger'>Unable to create employee.</div>";
    }
}