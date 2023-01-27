<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.util.*" %>
<%@ page import= "com.cisco.sporty.entity.Product"%>
<%@ page import="java.time.LocalDateTime" %>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
	.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
}

.price {
  color: grey;
  font-size: 22px;
}

.card button {
  border: none;
  outline: 0;
  padding: 12px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

.card button:hover {
  opacity: 0.7;
}
</style>
</head>
<body>
<form action="getallprods">


<button>Get all products</button>

</form>
<%if(request.getAttribute("plist")!=null){ %>
<%List<Product> plist=(List<Product>) request.getAttribute("plist"); %>
<%for(Product u: plist){ %>
<div class="card">
	<form action="addsale/<%= u.getPid() %>/<%=u.getPrice() %>">
	  <h1><%= u.getPname() %></h1>
	  <p class="price"><%=u.getPrice() %></p>
	  <p><button>Buy</button></p>
	</form>
</div>
<%} %>

<%} %>
</body>

</html>