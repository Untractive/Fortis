<%@page import="beans.Patient"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
<tr>
<td>State</td>
<td>City</td>
<td>Name</td>
<td>Email</td>
</tr>
</table>
<%
	Patient p=(Patient)session.getAttribute("p");

	
	
	String st=p.getState();
	String ct=p.getCity();
	String nm=p.getName();
	String em=p.getEmail();
	
%>

	<fieldset>
		<legend style="color:red;">Patient Details</legend>
		<tr><td>State</td> <td><%= st %></td></tr><br>
		<tr><td>City</td> <td><%= ct %></td></tr><br>
		<tr><td>Name</td> <td><%= nm %></td></tr> <br>
		<tr><td>Email</td> <td><%= em %></td></tr> <br>

		
	</fieldset>
    <br>
    <button onclick="window.print()">Print Out</button>
</body>
</html>