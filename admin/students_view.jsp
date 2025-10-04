<%@include file="./upper-container.jsp"%>
	<!--Main container start -->
	<main class="ttr-wrapper">
		<div class="container-fluid">
			<div class="db-breadcrumb">
				<h4 class="breadcrumb-title">Students</h4>
				<ul class="db-breadcrumb-list">
					<li><a href="#"><i class="fa fa-home"></i>Home</a></li>
					<li>Student Details</li>
				</ul>
			</div>	
			<div class="row">
				<!-- Student Profile Views Start  -->
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

                    <form name="view" id="view" action="../lib/student.jsp">
                    <div align=center><%=request.getParameter("msg")%></div>
                    <table height=300 width=600 id="viewtable" class="table">
                    <tr align=center><th>Roll</th>
                    <th>Name</th>
                    <th>Father Name</th>
                    <th>Gender</th>
                    <th>Course</th>
                    <th>Dob</th>
                    <th>Action</th></tr>
                    <% while(rs.next()){%>
                    <tr align=center>
                    <th><%=rs.getInt("roll")%></th>
                    <td><%=rs.getString("name")%></td>
                    <td><%=rs.getString("fname")%></td>
                    <td><%=rs.getString("gen")%></td>
                    <td><%=rs.getString("course")%></td>
                    <td><%=rs.getString("dob")%></td>
                    <td><a class="btn blue radius-xl outline" href="javascript:update(<%=rs.getString("roll")%>)">Update</a><a class="btn red radius-xl outline"  href="javascript:student_delete(<%=rs.getString("roll")%>)">Delete</a><a class="btn yellow radius-xl outline"  href="../profile_view.jsp?roll=<%=rs.getString("roll")%>">View</a><a class="btn green radius-xl outline"  href="../lib/student.jsp?button=fees&roll=<%=rs.getString("roll")%>">Fees</a></td></tr>
                    <%}%>
                    </table></center>
                    <%con.close();%>
                    <input type="hidden" name="r" />
                    <input type="hidden" name="st_id" />
                    <input type="hidden" name="button" />
                    </form>
				<!-- Your Profile Views END-->
			</div>
		</div>
	</main>
<%@include file="lower-container.jsp"%>