let employeeColumnDefs = [
  { header: "ID Number", columnName: "employee_id_number", style: "none" },
  { header: "Last Name", columnName: "employee_lname", style: "none" },
  { header: "First Name", columnName: "employee_fname", style: "none" },
  { header: "DOB", columnName: "employee_dob", style: "date" },
  { header: "Gender", columnName: "employee_gender", style: "none" }
];

let employeeRequest = new XMLHttpRequest();
employeeRequest.onreadystatechange = () => {
  if (employeeRequest.readyState == 4 && employeeRequest.status == 200) {
    let employees = JSON.parse(employeeRequest.responseText);
    renderHTMLTable(employees, employeeColumnDefs, "employee-content");
  }
};
employeeRequest.open("GET", "./get_employees.php", true);
employeeRequest.send();
