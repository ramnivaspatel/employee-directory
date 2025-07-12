<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Add/Edit Employee</title>
  <link rel="stylesheet" href="../css/styles.css">
</head>
<body>
  <main class="form-container">
    <h2 id="formTitle">Add/Edit Employee</h2>
    <form id="employeeForm">
      <input type="hidden" id="employeeId" />

      <label>First Name: <input type="text" id="firstName" required /></label>
      <label>Last Name: <input type="text" id="lastName" required /></label>
      <label>Email: <input type="email" id="email" required /></label>
      <label>Department: <input type="text" id="department" required /></label>
      <label>Role: <input type="text" id="role" required /></label>

      <div class="form-actions">
        <button type="submit">Save</button>
        <a href="index.ftl"><button type="button">Cancel</button></a>
      </div>
    </form>
  </main>

  <script src="../js/data.js"></script>
  <script src="../js/formHandler.js"></script>
</body>
</html>
