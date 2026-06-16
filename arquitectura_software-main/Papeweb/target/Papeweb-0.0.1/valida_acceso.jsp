<%-- 
    Document   : valida_acceso
    Created on : 27 abr 2026, 7:28:52 a.m.
    Author     : jorgefausto
--%>

<%@page import="mx.gdl.unedl.papeweb.db.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
   DBManager dbmanager = new DBManager();
   String clave   = request.getParameter("clave");
   String passw   = request.getParameter("passw");
   boolean valido = dbmanager.validaUsuario(clave, 
           passw);
   out.println(valido ? "Válido" : "No Válido");
%>
