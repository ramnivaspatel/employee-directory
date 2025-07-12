document.getElementById("employeeForm").addEventListener("submit", function (e) {
  e.preventDefault();

  const id = parseInt(document.getElementById("employeeId").value) || Date.now();
  const firstName = document.getElementById("firstName").value.trim();
  const lastName = document.getElementById("lastName").value.trim();
  const email = document.getElementById("email").value.trim();
  const department = document.getElementById("department").value.trim();
  const role = document.getElementById("role").value.trim();

  if (!firstName || !lastName || !email || !department || !role) {
    alert("All fields are required.");
    return;
  }

  const emailRegex = /\S+@\S+\.\S+/;
  if (!emailRegex.test(email)) {
    alert("Invalid email format.");
    return;
  }

  const existingIndex = window.employeeData.findIndex(emp => emp.id === id);
  const newEntry = { id, firstName, lastName, email, department, role };

  if (existingIndex >= 0) {
    window.employeeData[existingIndex] = newEntry;
    alert("Employee updated!");
  } else {
    window.employeeData.push(newEntry);
    alert("Employee added!");
  }

  window.location.href = "index.ftl";
});
