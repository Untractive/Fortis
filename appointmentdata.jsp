<%@page import="beans.apoint"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
   apoint p=(apoint)session.getAttribute("p");

String d=p.getDepartment();
String dc=p.getDoctor();
String s= p.getState();
String c= p.getCity();
String n = p.getName();
String e= p.getEmail();
String a= p.getAge();
String m= p.getMobile();
String ad= p.getAadhar();
String f= p.getFee();
%>
<fieldset>
<legend style="color:red;">Patient Details
</legend>

 <tr><td>Department : </td><td><%=d%></td></tr><br>
 <tr><td>Doctor : </td><td><%=dc%></td></tr><br>
 <tr><td>State : </td><td><%=s%></td></tr><br>
 <tr><td>City : </td><td><%=c%></td></tr><br>
 <tr><td>Name : </td><td><%=n%></td></tr><br>
 <tr><td>Email : </td><td><%=e%></td></tr><br>
 <tr><td>Age : </td><td><%=a%></td></tr><br>
 <tr><td>Mobile : </td><td><%=m%></td></tr><br>
 <tr><td>Aadhar : </td><td><%=ad%></td></tr><br>
 <tr><td>Fee : </td><td><%=f%></td></tr><br>

</fieldset>
<br>
<button onclick="window.print()">Print Out</button>
</body>
</html>