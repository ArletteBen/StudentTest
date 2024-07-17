<%@page import="java.util.List"%>
<%@page import="dao.StudentDao"%>
<%@page import="model.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Registration System</title>
<link rel="stylesheet" type="text/css" href="studStyle.css">
</head>
<body>
    <div class="container">
        <div class="panel">
            <h1>Student Registration</h1>
            <% Object o = session.getAttribute("message");
               if (o != null) {
                   String messg = session.getAttribute("message").toString();
                   out.println("<div class='message'>" + messg + "</div>");
                   session.removeAttribute("message");
               }
            %>
             <form action="ProcessStudent.jsp" method="POST" class="styled-form">
                <input type="text" name="id" placeholder="Student ID" required>
                <input type="text" name="name" placeholder="Name" required>
                <input type="text" name="phone" placeholder="Phone" required>
                <button type="submit">Save</button>
            </form>
        </div>
        <div class="panel">
            <h2>Student List</h2>
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Phone</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <% List<Student> li = new StudentDao().findAll();
                       for(Student st : li) {
                    %>
                    <tr>
                        <td><%= st.getId() %></td>
                        <td><%= st.getNames() %></td>
                        <td><%= st.getPhoneNo() %></td>
                        <td>
                            <a href="updateform.jsp?sid=<%= st.getId() %>" class="update-btn">Update</a>
                            <a href="deleteProcess.jsp?sid=<%= st.getId() %>" class="delete-btn">Delete</a>
                        </td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
