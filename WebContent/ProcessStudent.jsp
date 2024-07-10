

<%@page import="model.Student"%>
<%@page import="dao.StudentDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Process Student</h1>
        <%
        try{
            String id=request.getParameter("id");
            String name=request.getParameter("name");
            String phone=request.getParameter("phone");
            Student st=new Student();
            st.setId(Integer.parseInt(id));
            st.setNames(name);
            st.setPhoneNo(phone);
            StudentDao stDao=new StudentDao();
            String msg=stDao.create(st);
            session.setAttribute("message", msg);
            response.sendRedirect("myPage.jsp");
        } catch(Exception e){
            	e.printStackTrace();
            }
            %>
    </body>
</html>
