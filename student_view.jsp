<%@include file="./common/header.jsp"%>
<%! String n,g,c,r;%>
<script src="js/validation.js"></script>
<script src="js/component.js"></script>
<link rel="stylesheet" href="css/student_save.css" />
<%
String SQL=null;
if(request.getParameter("search")!="" && request.getParameter("search")!=null){
SQL="select * from student where name like '%"+request.getParameter("search")+"%' or gen like '"+request.getParameter("search")+"%'";
}
else
{
SQL="select * from student";
}
rs=stmt.executeQuery(SQL);
%>
<form action="#" id="search">
<a href="#">Exam</a>||
<a href="./student_save.jsp">Add Save</a>||<a href="javascript:printout()">Printout</a>
</form>
<form name="view" id="view" action="./lib/student.jsp">
<Center><h1>Student Details</h1>
<div><%=request.getParameter("msg")%></div>
<table height=300 width=600 id="viewtable" class="table">
<tr align=center><th>Roll</th>
<th>Name</th>
<th>Father Name</th>
<th>Gender</th>
<th>Course</th>
<th>Phone</th>
<th>Address</th>
<th>Dob</th>
<th>Qualification</th>
<th>Action</th></tr>
<% while(rs.next()){%>
<tr align=center>
<td><%=rs.getInt("roll")%></td>
<td><%=rs.getString("name")%></td>
<td><%=rs.getString("fname")%></td>
<td><%=rs.getString("gen")%></td>
<td><%=rs.getString("course")%></td>
<td><%=rs.getString("phone")%></td>
<td><%=rs.getString("address")%></td>
<td><%=rs.getString("dob")%></td>
<td><%=rs.getString("qualifi")%></td>
<td><a href="javascript:update(<%=rs.getString("roll")%>)">Update</a>||<a href="javascript:student_delete(<%=rs.getString("roll")%>)">Delete</a>||<a href="./profile_view.jsp?roll=<%=rs.getString("roll")%>">View</a>||<a href="./lib/student.jsp?button=fees&roll=<%=rs.getString("roll")%>">Fees</a></td></tr>
<%}%>
</table></center>
<%con.close();%>
<input type="hidden" name="r" />
<input type="hidden" name="st_id" />
<input type="hidden" name="button" />
</form>