<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import ="java.util.*,model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JAVA PROJECT</title>
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
          <a class="nav-link active" aria-current="page" href="index.jsp">Home<span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="addcustomer.jsp">Add Customer</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="displaycustomer">Display Customer</a>
        </li>

      </ul>
    </div>
</nav>
<div class="container">
<%List<customermodel>s=(List<customermodel>)request.getAttribute("data");%>
<center>
<table class="table">
  <thead>
    <tr>
      <th scope="col">First Name</th>
      <th scope="col">Last Name</th>
      <th scope="col">Address</th>
      <th scope="col">City</th>
      <th scope="col">State</th>
      <th scope="col">Email</th>
      <th scope="col">Number</th>
      
    </tr>
  </thead>
  <tbody>
  	<%for(customermodel temp:s) {%>
  	<tr>
  	<td><%=temp.getFirstname() %></td>
  	<td><%=temp.getLastname() %></td>
  	<td><%=temp.getAddress() %></td>
  	<td><%=temp.getCity() %></td>
  	<td><%=temp.getState() %></td>
  	<td><%=temp.getEmail() %></td>
  	<td><%=temp.getNumber() %></td>
  </tr>
  	<%} %>
  
  
  
  </tbody>
</table>

</center>

</div>

</body>
</html>