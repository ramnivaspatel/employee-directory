function toggleFilter() {
  const sidebar = document.getElementById("filterSidebar");
  sidebar.classList.toggle("hidden");
}

function deleteEmployee(id) {
  const confirmDel = confirm("Are you sure you want to delete?");
  if (!confirmDel) return;
  window.employeeData = window.employeeData.filter(emp => emp.id !== id);
  alert("Deleted. Reload the page to see changes.");
}

function applyFilters() {
  const name = document.getElementById("filterFirstName").value.toLowerCase();
  const dept = document.getElementById("filterDepartment").value.toLowerCase();
  const role = document.getElementById("filterRole").value.toLowerCase();
  let filtered = window.employeeData.filter(emp =>
    emp.firstName.toLowerCase().includes(name) &&
    emp.department.toLowerCase().includes(dept) &&
    emp.role.toLowerCase().includes(role)
  );
  console.log("Filtered:", filtered);
}

function clearFilters() {
  document.getElementById("filterFirstName").value = '';
  document.getElementById("filterDepartment").value = '';
  document.getElementById("filterRole").value = '';
  toggleFilter();
}
