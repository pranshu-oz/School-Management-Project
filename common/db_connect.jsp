<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%!
Connection con;
Statement stmt,stmt2;
ResultSet rs,rs2;
%>
<%
Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","pranshu");
stmt=con.createStatement();
stmt2=con.createStatement();
%>