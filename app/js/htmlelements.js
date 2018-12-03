function renderHTMLTable(data, tableColumnDefinitions, anchorElementId) {
  let anchorElement = document.getElementById(anchorElementId);

  let htmlTable = document.createElement("table");
  htmlTable.className = "table table-hover";

  let htmlTableHeader = document.createElement("thead");

  let htmlTableBody = document.createElement("tbody");

  let htmlTableHeaderRow = document.createElement("tr");

  for (var i = 0; i < tableColumnDefinitions.length; i++) {
    let htmlTableHeaderColumn = document.createElement("th");
    htmlTableHeaderColumn.scope = "col";

    htmlTableHeaderColumn.innerHTML = tableColumnDefinitions[i].header;
    htmlTableHeaderRow.appendChild(htmlTableHeaderColumn);
  }
  htmlTableHeader.appendChild(htmlTableHeaderRow);
  htmlTable.appendChild(htmlTableHeader);

  for (let i = 0; i < data.length; i++) {
    let dataElement = data[i];

    let htmlTableBodyRow = document.createElement("tr");

    for (let j = 0; j < tableColumnDefinitions.length; j++) {
      let tableColumn = tableColumnDefinitions[j];
      let employeeColumn = document.createElement("td");

      if (tableColumn.style == "date") {
        let dob = new Date(dataElement[tableColumn.columnName]);

        let formattedDate =
          dob.getMonth() + 1 + "/" + dob.getDate() + "/" + dob.getFullYear();

        employeeColumn.innerHTML = formattedDate;
      } else {
        employeeColumn.innerHTML = dataElement[tableColumn.columnName];
      }

      htmlTableBodyRow.appendChild(employeeColumn);
    }

    htmlTableBody.appendChild(htmlTableBodyRow);
  }
  htmlTable.appendChild(htmlTableBody);
  anchorElement.appendChild(htmlTable);
}
