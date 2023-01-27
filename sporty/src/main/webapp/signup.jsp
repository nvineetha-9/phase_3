<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
</head>
<body>
	<form action="storeuser" method="post" class="form-group">
	<label>Enter ID</label>
	<input type="text" name="uid" class="form-control"/><br><br>
	<label>Enter password</label>
	<input type="password" name="psw" class="form-control"/><br><br>
	<label>Enter Age</label>
	<input type="text" name="age" class="form-control"/><br><br>
	<label>Enter Phone</label>
	<input type="text" name="phno" class="form-control"/><br><br>
	<label>Gender</label>
	<input type="radio" name="gender" value="male" />Male
	<input type="radio" name="gender" value="female" />Female
	<h4>${message}</h4>
	<button class="btn btn-primary">Submit</button>
	<a href="userlogin.jsp">back to login</a>
	</form>
	
</body>
<style>
	body{ 
  margin: auto;
  width: 640px; 
  padding: 50px;
  font-family: 'Lexend Deca', sans-serif; 
  color: #2E475D;
  background-color:#EAF0F6;    
 }
</style>
</html>