<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.util.*" %>
<%@ page import= "com.cisco.sporty.entity.Sales"%>
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
<form action="showsales" class="form-group">
	<input type="date" name="date" class="form-control"/><br><br>
	<button class="btn btn-primary">Getdata</button>
</form>
<%if(request.getAttribute("slist")!=null){ %>
<table border="1" id="customers">
<tr>
<th>Product ID</th>
<th>Product Name</th>
</tr>
<%List<Sales> slist=(List<Sales>) request.getAttribute("slist"); %>
<%for(Sales s: slist){ %>
<tr>
	<td><%= s.getPid() %></td>
	<td><%= s.getPrice() %></td>
</tr>
<%} %>
</table>
<%} %>
</body>

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
</html>