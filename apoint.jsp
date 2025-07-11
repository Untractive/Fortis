<%@page import="beans.apoint"%>
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
String department=request.getParameter("department");
String doctor=request.getParameter("doctor");
String state=request.getParameter("state");
String city=request.getParameter("city");
String name=request.getParameter("name");
String email=request.getParameter("email");
String age=request.getParameter("age");
String mobile=request.getParameter("mobile");
String aadhar=request.getParameter("aadhar");
String fee=request.getParameter("fee");

apoint ap=new apoint();
ap.setDepartment(department);
ap.setDoctor(doctor);
ap.setState(state);
ap.setCity(city);
ap.setName(name);
ap.setEmail(email);
ap.setAge(age);
ap.setMobile(mobile);
ap.setAadhar(aadhar);
ap.setFee(fee);
 
session.setAttribute("p", ap);

Class.forName("com.mysql.cj.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fortis","root","root");
String s="insert into apoint values(?,?,?,?,?,?,?,?,?,?)";
PreparedStatement p=cn.prepareStatement(s);
p.setString(1,department);
p.setString(2,doctor);
p.setString(3,state);
p.setString(4,city);
p.setString(5,name);
p.setString(6,email);
p.setString(7,age);
p.setString(8,mobile);
p.setString(9,aadhar);
p.setString(10,fee);

int i=p.executeUpdate();
if(i>0)
{
	response.sendRedirect("appointmentdata.jsp");
}
%>
</body>
</html>