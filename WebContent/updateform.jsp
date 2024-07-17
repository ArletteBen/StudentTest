<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="dao.StudentDao"%>
     <%@page import="model.Student"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="studStyle.css">
</head>
<body>
<%
StudentDao stDao=new StudentDao();
Student st=stDao.findByid(Integer.parseInt(request.getParameter("sid")));
%>
 <form action="processUpdate.jsp" method="POST" class="styled-form">
                <input type="text" name="id"  value="<%=st.getId() %>"  placeholder="Student ID" required>
                <input type="text" name="name" value="<%=st.getNames() %>" placeholder="Name" required>
                <input type="text" name="phone" value="<%=st.getPhoneNo() %>" placeholder="Phone" required>
                <button type="submit">Update</button>
            </form>
</body>
</html>