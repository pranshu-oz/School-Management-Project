<%@include file="./upper-container.jsp"%>
<%! String val=null,sub;%>
<script src="../js/ajax.js"></script>
<body id="body">
<main class="ttr-wrapper">
		<div class="container-fluid">
			<div class="db-breadcrumb">
				<h4 class="breadcrumb-title">User Profile</h4>
				<ul class="db-breadcrumb-list">
					<li><a href="#"><i class="fa fa-home"></i>Home</a></li>
					<li>User Profile</li>
				</ul>
			</div>	
			<div class="row">
<form class="form-floating" action="./common/resultrecord.jsp" name="result">
<div class="container">
<div class="row justify-content-center">
<div class="col-6" >
<br>
<h3 style="color:red;" align=center><%out.print(request.getParameter("msg"));%></h3>
<select class="form-select" name="rollselect" aria-label="Default select example" onChange="changeData()">
  <option selected>Select Student Roll No.</option>
<%
rs=stmt.executeQuery("select *from student");
while(rs.next()){
%>
  <option><%=rs.getInt("roll")%></option>
<%}%>
</select>
</div>
</div>
</div>
<!--Define name and other field-->
<div id="content"></div>
</form>
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