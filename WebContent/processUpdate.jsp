<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="model.Student"%>
    <%@page import="dao.StudentDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String phone=request.getParameter("phone");
Student st=new Student();
st.setId(Integer.parseInt(id));
st.setNames(name);
st.setPhoneNo(phone);
StudentDao stDao=new StudentDao();
session.setAttribute("message", stDao.update(st));
response.sendRedirect("myPage.jsp");
%>
</body>
</html>