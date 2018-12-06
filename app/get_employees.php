<?php
require_once("inc/config.php");
require_once("objects/database.php");
require_once("objects/employee.php");

$database = new Database();
$db = $database->get_connection();
$employee = new Employee($db);
$result = $employee->read_all();

echo json_encode($result);

?>