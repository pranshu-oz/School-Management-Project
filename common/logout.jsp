<%@page errorPage="Error.jsp"%>
<%
session.removeAttribute("admin");
response.sendRedirect("../index.jsp?msg=logout Succesfull");
%>