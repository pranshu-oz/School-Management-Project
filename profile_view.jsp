<%@include file="./common/db_connect.jsp"%>
<%! String SQL,course;
int r;
%>
<%
r=Integer.parseInt(request.getParameter("roll"));
session.setAttribute("admit",r);
SQL="select *from student full outer join fees on student.roll=fees.st_id where roll="+r;
rs=stmt.executeQuery(SQL);
while(rs.next()){
course=rs.getString(7);
%>
<form id="form1" name="fees" method="post" action="common/admit.jsp"><center>
<h1><u>Student Profile View</u></h1><hr />
<table id="table">
<tr><th>Roll No. :</th><td><%out.print(rs.getString("roll"));%></td></tr>
<tr><th>Name: </th><td><%out.print(rs.getString("name"));%></td></tr>
<tr><th>Father Name: </th><td><%out.print(rs.getString("fname"));%></td></tr>
<tr><th>Gender: </th><td><%out.print(rs.getString("gen"));%></td></tr>
<tr><th>Course: </th><td><%out.print(rs.getString(7));%></td></tr>
<tr><th>Phone no.: </th><td><%out.print(rs.getString("phone"));%></td></tr>
<tr><th>Total Fees: </th><td><%out.print(rs.getInt("total"));%></td></tr>
<tr><th>Amount: </th><td><%out.print(rs.getInt("paid"));%></td></tr>
<tr><th>Balance: </th><td><%out.print(rs.getInt("balance"));%></td></tr>
<tr><th>Date: </th><td><%out.print(rs.getString("d_time"));%></td></tr>
<tr><th>Discription:</th><td><%out.print(rs.getString("des"));%></td></tr>
<tr><th>Address: </th><td><%out.print(rs.getString("address"));%></td></tr>
<%
}
rs=stmt.executeQuery("select *from exam");
if(rs.next()){
if(course.equals(rs.getString("ex_course"))){

%><tr><td align="center"><input name="button" type="submit" id="button" value="View Admit card" /></td>
<%
}
}%>
<td align="center"><a href="./lib/student.jsp?button=Go Back"><input type="button" value="Go Back" /></a></td></tr>
	  <%
	  con.close();
	  %>
  </table>
</form>