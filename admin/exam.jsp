<%@include file="./upper-container.jsp"%>
<%@page import="java.sql.*"%>
<%! String name,course,sem;
int c;
long mili=System.currentTimeMillis();
Date d=new Date(mili);
%>
<script src="../js/ajax.js"></script>
<!--<link rel="stylesheet" href="css/student_save.css" />-->
<main class="ttr-wrapper">
		<div class="container-fluid">
			<div class="db-breadcrumb">
				<h4 class="breadcrumb-title">Schedule Exam</h4>
				<ul class="db-breadcrumb-list">
					<li><a href="#"><i class="fa fa-home"></i>Home</a></li>
					<li>Schedule Exam</li>
				</ul>
			</div>	
			<div class="row">

<form id="exam" name="exam" method="post" action="../lib/student.jsp"><center>
<div class="container-lg-6">
<div class="col-6">
<div class="form-floating mb-3">
<select name="course" onChange="sendData()" class="form-select" id="select1" aria-label="Floating label select example">
<option>Please select course</option>
<%
rs=stmt.executeQuery("select *from course");
while(rs.next()){
%>
<option><%=rs.getString("c_name")%></option>
<%}
con.close();
%>
</select>
<label for="select1">Selected Course</label>
</div>
</div>
<div class="col-6">
<div class="form-floating mb-3">
<select name="semester" onChange="sendData()" class="form-select" id="floatingSelectGrid" aria-label="Floating label select example">
<option>Please Select Semester</option>
<option>1st</option>
<option>2nd</option>
<option>3rd</option>
<option>4th</option>
</select>
<label for="floatingSelectGrid">Selected Semester</label>
</div>
</div>
<div class="col-6">
<div class="form-floating mb-3">
<select name="subject" id="subject" class="form-select" id="floatingSelectGrid" aria-label="Floating label select example">
<option>Please Select Subject</option>
</select>
<label for="floatingSelectGrid">Selected Subject</label>
</div>
</div>
<div class="col-6">
<div class="form-floating mb-3">
<input type="text" name="date" value="<%=d%>" class="form-control" id="floatingInputGrid"/>
<label for="floatingInputGrid">Select Date</label>
</div>
</div>
<div class="col-6">
<div class="form-floating mb-3">
<select name="time" class="form-select" id="floatingSelectGrid" aria-label="Floating label select example">
<option>Please Select time</option>
<option>Morning (9 AM to 12 PM)</option>
<option>Evening (2 PM to 5 PM)</option></select><label for="floatingSelectGrid">Select Time</label>
</div>
</div>
<div class="col-6">
<div class="form-floating mb-3">
<input type="text" name="discription" class="form-control" id="floatingInputGrid"/>
<label for="floatingInputGrid">Discription</label>
</div>
</div>
<div class="col-6">
<input name="button" type="Submit" id="button" value="Exam" class="btn btn-outline-success"/>
      <input name="Reset" type="reset" id="Reset" value="Reset" class="btn btn-outline-danger"/>
	  </div>
  </center>
  </div>
</form>
<div id="check"></div>
<!--Dynamic row creation-->
</main>
	<div class="ttr-overlay"></div>
<!-- External JavaScripts -->
<script src="../bootstrap/js/bootstrap.min.js"></script>
<script src="../bootstrap/js/jquery-3.6.3.js"></script>
<script src="assets/js/jquery.min.js"></script>
<script src="assets/vendors/bootstrap/js/popper.min.js"></script>
<script src="assets/vendors/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/vendors/bootstrap-touchspin/jquery.bootstrap-touchspin.js"></script>
<script src="assets/vendors/magnific-popup/magnific-popup.js"></script>
<script src="assets/vendors/counter/waypoints-min.js"></script>
<script src="assets/vendors/counter/counterup.min.js"></script>
<script src="assets/vendors/imagesloaded/imagesloaded.js"></script>
<script src="assets/vendors/masonry/masonry.js"></script>
<script src="assets/vendors/masonry/filter.js"></script>
<script src="assets/vendors/owl-carousel/owl.carousel.js"></script>
<script src='assets/vendors/scroll/scrollbar.min.js'></script>
<script src="assets/js/functions.js"></script>
<script src="assets/vendors/chart/chart.min.js"></script>
<script src="assets/js/admin.js"></script>
<script src='assets/vendors/switcher/switcher.js'></script>
<script src="../js/validation.js"></script>
<script src="../js/component.js"></script>
</body>

<!-- Mirrored from educhamp.themetrades.com/demo/admin/courses.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 22 Feb 2019 13:11:35 GMT -->
</html>