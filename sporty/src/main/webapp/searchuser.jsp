<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ page import= "com.cisco.sporty.entity.User"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="homestyle.css">
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
            <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
            <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
            <link rel="stylesheet"
                href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}
body{ 
  margin: auto;
  width: 640px; 
  padding: 50px;
  font-family: 'Lexend Deca', sans-serif; 
  color: #2E475D;
  background-color:#EAF0F6;    
 }
</style>
</head>
<body>
<h1>Signed up users:</h1>
<form action="getbyid" class="form-group">
	<input type="text" name="id" class="form-control"><br><br>
	<button class="btn btn-success">Search</button><br><br>
</form>
<table class="center" border="1" id="customers">
<tr>
<th>User ID</th>
<th>User Name</th>
<th>User age</th>
<th>Phone no</th>
<th>Gender</th>
</tr>
<%List<User> ulist=(List<User>) request.getAttribute("ulist"); %>
<%for(User u: ulist){ %>
<tr>
	<td><%= u.getUid() %></td>
	<td><%= u.getPassword() %></td>
	<td><%= u.getAge() %></td>
	<td><%= u.getPhno() %></td>
	<td><%= u.getGender()%></td>
</tr>
<%} %>
</table>
</body>
</html>