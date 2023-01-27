<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
.button {
  display: inline-block;
  border-radius: 4px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 28px;
  padding: 20px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
  color:blue;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}


.button {
    display: table-cell;
    vertical-align: middle;
    display: table;
    margin: 14px;
}
a {
  float:right;
  margin:12px;
}
a:link, a:visited {
  background-color: #f44336;
  color: white;
  padding: 14px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

a:hover, a:active {
  background-color: red;
}
.middle{
margin: auto;
  width: 640px; 
  padding: 50px;
  font-family: 'Lexend Deca', sans-serif; 
  color: #2E475D;
  
 }
</style>
</head>
<body>
<a href="adminlogin.jsp">logout</a><br><br><br><br>
<div class="middle">
<form action="addproduct.jsp"><button class="button">Add Product</button></form>
<form action="getusers" ><button class="button">Search users</button></form>
<form action="showreport.jsp" ><button class="button">Show report</button></form>
</div>

</body>
</html>