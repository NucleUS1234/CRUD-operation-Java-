<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

</head>
<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
  
    <a class="navbar-brand" href="#">Project</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="addcustomer.jsp">Add Customer<span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="displaycustomer">Display Customer</a>
        </li>

      </ul>
    </div>
</nav>
<div class ="container">
<form action="addcustomer" method="post">
<div class="form-group">
  <label for="firstname" class="form-label">First Name</label>
  <input type="text" name="firstname"class="form-control" id="firstname" >
</div>
<div class="form-group">
  <label for="lastname" class="form-label">Last Name</label>
  <input type="text" name="lastname"class="form-control" id="lastname" >
</div>
<div class="form-group">
  <label for="address" class="form-label">Address</label>
  <input type="text" name="address"class="form-control" id="address" >
</div>
<div class="form-group">
  <label for="city" class="form-label">City</label>
  <input type="text" name="city"class="form-control" id="city" >
</div>
<div class="form-group">
  <label for="state" class="form-label">State</label>
  <input type="text" name="state"class="form-control" id="state" >
</div>
<div class="form-group">
  <label for="email" class="form-label">Email</label>
  <input type="email" name="email"class="form-control" id="email" >
</div>
<div class="form-group">
  <label for="number" class="form-label">Contact Number</label>
  <input type="number" name="number"class="form-control" id="number" >
</div>
<button type="submit" class="btn btn-outline-success">Submit</button>
</form>


</div>

</body>
</html>