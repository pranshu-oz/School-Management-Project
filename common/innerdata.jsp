<%@include file="./db_connect.jsp"%>
<%@page errorPage="./Error.jsp"%>
<%! String course,sem="1st",SQL;
int id;
%>
<%
sem=request.getParameter("s");
course=request.getParameter("c");
out.print(course+""+sem);
SQL="select *from course where c_name='"+course+"'";
rs=stmt.executeQuery(SQL);
while(rs.next()){
id=rs.getInt("c_id");
}
SQL="select *from subject where course_id="+id+" and sem='"+sem+"'";
rs=stmt.executeQuery(SQL);
while(rs.next()){
out.print("<option>"+rs.getString("s_name")+"</option>");
}
con.close();
%>