<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Employee Directory</title>
  <link rel="stylesheet" href="../css/styles.css">
</head>
<body>
  <header>
    <h1>Employee Directory</h1>
    <div class="toolbar">
      <input type="text" id="searchInput" placeholder="Search by name or email" />
      <select id="sortSelect">
        <option value="">Sort by</option>
        <option value="firstName">First Name</option>
        <option value="department">Department</option>
      </select>
      <button onclick="toggleFilter()">Filter</button>
      <a href="form.ftl"><button>Add Employee</button></a>
    </div>
  </header>

  <aside id="filterSidebar" class="hidden">
    <h3>Filters</h3>
    <label>First Name: <input type="text" id="filterFirstName" /></label>
    <label>Department: <input type="text" id="filterDepartment" /></label>
    <label>Role: <input type="text" id="filterRole" /></label>
    <button onclick="applyFilters()">Apply</button>
    <button onclick="clearFilters()">Clear</button>
  </aside>

  <main id="employeeContainer">
    <#list employees as emp>
      <div class="employee-card">
        <p><strong>ID:</strong> ${emp.id}</p>
        <p><strong>Name:</strong> ${emp.firstName} ${emp.lastName}</p>
        <p><strong>Email:</strong> ${emp.email}</p>
        <p><strong>Department:</strong> ${emp.department}</p>
        <p><strong>Role:</strong> ${emp.role}</p>
        <div class="actions">
          <a href="form.ftl?id=${emp.id}"><button>Edit</button></a>
          <button onclick="deleteEmployee(${emp.id})">Delete</button>
        </div>
      </div>
    </#list>
  </main>

  <footer>
    <label>Show:
      <select id="paginationSelect">
        <option>10</option>
        <option>25</option>
        <option>50</option>
        <option>100</option>
      </select>
    </label>
  </footer>

  <script src="../js/data.js"></script>
  <script src="../js/main.js"></script>
</body>
</html>
