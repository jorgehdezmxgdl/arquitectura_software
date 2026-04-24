<%-- 
    Document   : procesa
    Created on : 24 abr 2026, 9:33:38 a.m.
    Author     : jorgefausto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
           String nombre = request.getParameter("nombre");
           if (nombre == null) {
               out.println("<p style='color:red'>"
                       + " Sin nombre</p>");
           } else {
               out.println("<p>Hola," + nombre +"</p>");
           }
        %>
    </body>
</html>
