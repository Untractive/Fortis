<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
	<tr>
	<td>Department : </td>
 <td>Doctor : </td>
 <td>State : </td>
 <td>City : </td>
 <td>Name : </td>
 <td>Email : </td>
 <td>Age : </td>
 <td>Mobile : </td>
 <td>Aadhar : </td>
 <td>Fee : </td>
	</tr>
	<%
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fortis","root","root");
	String s="select * from apoint ";
	PreparedStatement p=cn.prepareStatement(s);
	ResultSet r=p.executeQuery();
	while(r.next())
	{
		%>
			<tr>
				<td><%= r.getString("department") %></td>
				<td><%= r.getString("doctor") %></td>
				<td><%= r.getString("state") %></td>
				<td><%= r.getString("city") %></td>
				<td><%= r.getString("name") %></td>
				<td><%= r.getString("email") %></td>
				<td><%= r.getString("age") %></td>
				<td><%= r.getString("mobile") %></td>
				<td><%= r.getString("aadhar") %></td>
			</tr>
		<%
	}
	%>
</table>
<br>
<button onclick="window.print()">Print Out</button>
</body>
</html>