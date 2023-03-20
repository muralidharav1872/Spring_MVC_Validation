<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix = "jstl" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style>
<style>
a:link, a:visited {
  background-color: white;
  color: black;
  border: 2px solid green;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

body {
  background-image: url(https://c1.wallpaperflare.com/preview/480/45/109/book-business-can-designer.jpg);
	  background-repeat: no-repeat;
	background-attachment: fixed;  
  background-size: cover;
}
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  border-radius:160px;
  padding: 20px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #EFA93A;
  color: black;
}
button{
border-radius: 30%;
border-color: white;
position: relative;
left: 20px;
}
button:hover{
background-color: green;
cursor: pointer;
}
h1{
color: orange;
position: relative;
left: 570px;
}

</style>
<meta charset="ISO-8859-1">
<title>Result Table</title>
<link rel="icon" href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUz8Xong1mwVsk-d2m_Jy73hDGKJdqcY0Qkw&usqp=CAU">
</head>
<body>
 <marquee  behavior="scroll" direction="right" scrollamount="25"> <h1>${msg}</h1> </marquee>


<table id="customers" border="1" style=background:azure;>
<tr>
<th>Id</th>
<th>Name</th>
<th>Email</th>
<th>Password</th>
<th>Phone</th>
<th>Delete</th>
<th>Edit</th>
</tr>
<jstl:forEach var="emp" items="${list}">
<tr>

<th>${emp.getId()}</th>
<th>${emp.getName()}</th>
<th>${emp.getEmail()}</th>
<th>${emp.getPassword()}</th>
<th>${emp.getPhone() }</th>
<th> <a href="delete?id=${emp.getId()}"><button>Delete</button></a></th>
<th> <a href="edit?id=${emp.getId()}"><button>Edit</button></a></th>
</tr>
</jstl:forEach>

</table>
</body>
</html>