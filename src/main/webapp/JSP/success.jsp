<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 <!DOCTYPE html>
<html>
<head>
<script type="text/javascript">

  function addUser() {
	  alert("new user added")
	document.fn.action="add";
	document.fn.submit();
}
  function deleteUser() {
		document.fn.action="delete";
		document.fn.submit();
	}
  function editUser() {
	  alert("Hello Edit User")
		document.fn.action="edit";
		document.fn.submit();
	}
</script>
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
</style>
</head>
<body>
  <form name="fn">
<h1>Student Table</h1>

<table id="customers">
  <tr>
     <th>SrNO</th>
    <th>UID</th>
    <th>name</th>
    <th>username</th>
    <th>Password</th>
    <th>MobileNo</th>
     
    
    
  </tr>
   <c:forEach items="${list}" var="l">
  <tr>
    <td><input type="radio" name="uid" value="${l.uid}"></td>
     <td> ${l.uid}</td>
    <td> ${l.name}</td>
    <td> ${l.uname}</td>
    <td> ${l.password}</td>
    <td> ${l.mobileno}</td>
    
   <%--  <td><a href="edit?uid=${l.uid}">EDIT</a>||<a href="delete?uid=${l.uid}">DELETE</a></td> --%>
  </tr>
  </c:forEach>
  </form>
</table>
<table border="2" align="center">
    <tr>
        <td> <input type="button" value="EDIT" onclick="editUser()"></td>
        <td><input type="button" value="ADD" onclick="addUser()"></td>
        <td><input type="button" value="DELETE" onclick="deleteUser()"></td>
    </tr>
</table>
</body>
</html>


   
</body>
</html>