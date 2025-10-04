<%@include file="upper-container.jsp"%>
<main class="ttr-wrapper">
		<div class="container-fluid">
			<div class="db-breadcrumb">
				<h4 class="breadcrumb-title">Students</h4>
				<ul class="db-breadcrumb-list">
					<li><a href="#"><i class="fa fa-home"></i>Home</a></li>
					<li>Student Details</li>
					<li>Fees</li>
				</ul>
			</div>	
			<div class="row">

<%@include file="./upper-container.jsp"%>
<%!
String r,name,fname,course,date,desc;
int max,t1,total,bal,paid;
%>
<!-- data base handle code-->
<%
total=0;t1=0;bal=0;paid=0;max=0;
date=null;desc=null;
r=request.getParameter("roll");
String SQL="select * from student where roll="+r;
rs=stmt.executeQuery(SQL);
while(rs.next()){
course=rs.getString("course");
name=rs.getString("name");
fname=rs.getString("fname");
}
rs=stmt.executeQuery("select *from fees where st_id="+r);
while(rs.next()){
date=rs.getString("d_time");
desc=rs.getString("des");
total=rs.getInt("total");
bal=rs.getInt("balance");
paid=rs.getInt("paid");
}
rs=stmt.executeQuery("select total from course where c_name='"+course+"'");
while(rs.next()){
t1=rs.getInt("total");
}
if(max==0){
max=t1;
}
max=t1-paid;

if(max==0){
	out.print("<h4 align=center>No Remaining Balance</h4>");
}
%>
<link rel="stylesheet" href="css/student_save.css" />
<script src="./js/event.js"></script>
<div class="container" style="width:600px;">
<form id="form1" name="fees" method="post" action="./lib/student.jsp"><center>
<div class="container row g-2">
<div class="form-floating mb-3 col-md">
<input type="text" name="r" class="form-control" id="floatingInput" value="<%=r%>" readonly=""/>
 <label for="floatingInput">Roll No.</label>
</div>
<div class="form-floating mb-3 col-md">
<input type="text" name="n" class="form-control" id="floatingInput" value="<%=name%>" readonly="" />
 <label for="floatingInput">Full Name</label>
</div></div>


<div class="container row g-2">
<div class="form-floating mb-3 col-md">
<input type="text" name="fn" class="form-control" id="floatingInput" value="<%=fname%>" readonly=""/>
 <label for="floatingInput">Father Name</label>
</div>
<div class="form-floating mb-3 col-md">
<select name="course" class="form-control" id="floatingInput" readonly="">
<option><%=course%></option></select>
 <label for="floatingInput">Course</label>
</div>
</div>


<div class="container row g-2">
<div class="form-floating mb-3 col-md">
<input name="total" type="text" class="form-control" id="floatingInput" value="<%=max%>" readonly=""/>
 <label for="floatingInput">Total Amount</label>
</div>
	<div class="form-floating mb-3 col-md">
	<input name="paid" type="text" class="form-control" id="floatingInput" value="<%=0%>" onkeyup="calc()" />
 	<label for="floatingInput">Paid Amount</label>
	</div>
</div>
		<div class="container row g-2">
		<div class="form-floating mb-3 col-md">
		<input name="balance" type="text" class="form-control" id="floatingInput" value="<%=bal%>" readonly=""/>
		<label for="floatingInput">Remaining Balance</label>
</div>
<div class="form-floating mb-3 col-md">
		<input name="date" type="text" class="form-control" id="floatingInput" value="<%=date%>" />
		<label for="floatingInput">Date</label>
</div>
		</div>
		
		<div class="container row g-2">
		<div class="form-floating mb-3 col-md">
      <textarea name="desc" class="form-control" id="floatingInput"><%=desc%></textarea>
	   <label for="floatingInput">Discription</label>
</div>
<div class="form-floating mb-3 col-md">
      <input name="button" type="submit" class="btn btn-outline-success" id="button" value="Fees Update" />
	   <input name="Reset" type="reset" class="btn btn-outline-danger" id="Reset" value="Reset" />
</div>
	  </div>

  <input type="hidden" name="paidold" value="<%=paid%>" />
</form>
</div>
<table border="1" class="table">
<!--first row creation-->
<tr align=center><th>Roll</th>
<th>Name</th>
<th>Father Name</th>
<th>Gender</th>
<th>Course</th>
<th>Total</th>
<th>Paid</th>
<th>Balance</th>
<th>Date</th>
<th>Description</th>
</tr>
<!--Dynamic row creation-->
<%
rs=stmt.executeQuery("select *from student where roll="+r);
while(rs.next()){
%>
<tr align=center>
<td><%=rs.getInt("roll")%></td>
<td><%=rs.getString("name")%></td>
<td><%=rs.getString("fname")%></td>
<td><%=rs.getString("gen")%></td>
<td><%=rs.getString("course")%></td>
<%}%>
<td><%=t1%></td>
<%
rs2=stmt.executeQuery("select *from fees where st_id="+r);
while(rs2.next()){
%>
<td><%=rs2.getInt("paid")%></td>
<td><%=rs2.getInt("balance")%></td>
<td><%=rs2.getString("d_time")%></td>
<td><%=rs2.getString("des")%></td></tr>
<%}%>
</table>
<%con.close();
%>
</center>
<%@include file="lower-container.jsp"%>