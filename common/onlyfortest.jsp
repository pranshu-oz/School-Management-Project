<%@page errorPage="Error.jsp"%>
<%@include file="db_connect.jsp"%>
<%@page import="java.util.*"%>

<%!
String id,SQL,msg;
int i;
boolean table=false;
%>

<%
rs=stmt.executeQuery("select *from student");
for(int i=0;i<6;i++){
rs.next();
out.print(rs.getString("roll"));
}
%>