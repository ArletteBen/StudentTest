<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Registration System</title>
</head>
 <body>
         <% Object o = session.getAttribute("message");
            if( o !=null){
                String messg=session.getAttribute("message").toString();
                out.println(messg);
               session.removeAttribute("message");
            }
            %>
        <h1>Student registration</h1>
        <form action="ProcessStudent.jsp" method="POST">
      <input type="text" placeholder="student id" name="id" value="" /><br/>
      <input type="text" placeholder="name" name="name" value="" /><br/>
      <input type="text" placeholder="phone" name="phone" value="" /><br/>
      <button>save</button>
        </form>
       
    </body>
</html>