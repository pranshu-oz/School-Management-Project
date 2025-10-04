<%@page errorPage="Error.jsp"%>
<%@include file="db_connect.jsp"%>
<%@page import="java.util.*"%>

<%!
String id,SQL,msg;
int i;
boolean table=false;
%>
<%
id=request.getParameter("rollselect");
String []sub=request.getParameterValues("sub");
String []th=request.getParameterValues("th");
String []pr=request.getParameterValues("pr");

i=0;
SQL=String.format("SELECT TABLE_NAME FROM USER_TABLES WHERE TABLE_NAME='RES%s'",id);
rs=stmt.executeQuery(SQL);
if(!rs.next()){
SQL=String.format("create table RES%s(rt_sub varchar(40),rt_th varchar(20), rt_pr varchar(20))",id);
int x=stmt.executeUpdate(SQL);
if(x>0){
out.print("Table is Created!!");
table=true;
}
}

SQL=String.format("select * from RES%s",id);
rs=stmt.executeQuery(SQL);

for(String s : sub){

if(rs.next()){
if(rs.getString("rt_sub").equals(s)){
SQL=String.format("update RES%s set rt_th='%s', rt_pr='%s' where 		rt_sub='%s'",id,th[i],pr[i],s);
msg="Record Is Updated";

}
else{		
SQL=String.format("insert into RES%s values('%s','%s','%s')",id,s,th[i],pr[i]);
msg="Record Is Inserted";
}
}else{		
SQL=String.format("insert into RES%s values('%s','%s','%s')",id,s,th[i],pr[i]);
msg="Record Is Inserted";
}

int x=stmt2.executeUpdate(SQL);
if(x>0){
i++;
}
}
response.sendRedirect("../student_result.jsp?msg="+msg);
con.close();
%>





