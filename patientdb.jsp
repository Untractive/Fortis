<%@page import="beans.Patient"%>
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
<%
String state=request.getParameter("state");
String city=request.getParameter("city");
String name=request.getParameter("name");
String email=request.getParameter("email");

Patient pt=new Patient();
pt.setState(state);
pt.setCity(city);
pt.setName(name);
pt.setEmail(email);

session.setAttribute("p",pt);

Class.forName("com.mysql.cj.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fortis","root","root");
String s="insert into patient values(?,?,?,?)";
PreparedStatement p=cn.prepareStatement(s);
p.setString(1,state);
p.setString(2,city);
p.setString(3,name);
p.setString(4,email);


int i=p.executeUpdate();
if(i>0)
{
	response.sendRedirect("patientdata.jsp");
}

%>

</body>
</html>