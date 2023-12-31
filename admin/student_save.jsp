<%@include file="./upper-container.jsp"%>
<%@page errorPage="../common/Error.jsp"%>
<%! String r,n,g,c,phone,fname,qual,dob,address,img;%>
<%
r=request.getParameter("roll");
n=request.getParameter("name");
g=request.getParameter("gen");
c=request.getParameter("course");
phone=request.getParameter("phone");
qual=request.getParameter("qual");
address=request.getParameter("address");
dob=request.getParameter("dob");
fname=request.getParameter("fname");
img=request.getParameter("img");
%>
<script src="../js/edition.js"></script>
<script src="../js/component.js"></script>

<body onLoad="edit(<%=r%>,'<%=n%>','<%=g%>','<%=c%>','<%=phone%>','<%=qual%>','<%=address%>','<%=fname%>','<%=dob%>','<%=img%>')">
 <main class="ttr-wrapper">
		<div class="container-fluid">
			<div class="db-breadcrumb">
				<h4 class="breadcrumb-title">User Profile</h4>
				<ul class="db-breadcrumb-list">
					<li><a href="#"><i class="fa fa-home"></i>Home</a></li>
					<li>Add Student</li>
				</ul>
			</div>	
			<div class="row">

        <section class="h-100  bg-dark ">
          <div class="container h-100">
            <div class="row d-flex justify-content-right align-items-right h-100">
              <div class="col">
                <div class="card card-registration">
                  <div class="row g-0">
                    <div class="col-xl-6 d-none d-xl-block">
                      <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img4.webp" alt="Sample photo" class="img-fluid" style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
                    </div>
                    <div class="col-xl-6">
			                <form action="../lib/student.jsp" method="post" name="save">
                        <div class="card-body p-md-5 text-black">
                          <h3 class="mb-5 text-uppercase">Student registration form</h3>
                            <div id="rolln" style="display:inline;font-size:22px;"></div>
                              <div id="roll" style="display:inline;font-size:22px;"></div>
                                <div class="row">
                                  <div class="col-md-6 mb-4">
                                    <div class="form-outline">
                                      <input type="text" id="form3Example1m" class="form-control form-control-lg" placeholder="Full Name" name="n" />
                                    </div>
                                  </div>
                                  <div class="col-md-6 mb-4">
                                    <div class="form-outline">
                                      <input type="text" id="form3Example1n" class="form-control form-control-lg" placeholder="Father's Name" name="fn" />
                                    </div>
                                  </div>
                                </div>
                                <div class="row">

                                  <!-- course selection -->
                                  <div class="col-lg-6 mb-4">
                                    <select class="form-select form-select-sm-6 mb-3" aria-label=".form-select-lg example" name="c" onchange="getSemester()">
                                      <option selected>Select Course</option>
                                      <% rs=stmt.executeQuery("select * from course");
                                      while(rs.next()){
                                        %>
                                          <option><%=rs.getString(2)%></option>
                                        <%}%>
                                      
                                    </select>
                                  </div>

                                  <!-- Semester Selection-->
                                  <div class="col-lg-6 mb-4">
                                    <select class="form-select form-select-sm-6 mb-3" aria-label=".form-select-lg example" name="sem">
                                      <option selected>Select Semester</option>
                                      
                                      

                                    </select>
                                  </div>
                                </div>

                                <!-- DOB selecetion Area-->
                                <div class="mb-4">
                                  <div class="form-outline">
                                    <input type="text" id="form3Example1n1" class="form-control form-control-lg" placeholder="DOB" name="dob" />
                                  </div>
                                </div>

                                <!-- Address Container-->
                                <div class="form-outline mb-4">
                                  <input type="text" id="form3Example8" class="form-control form-control-lg" placeholder="Address" name="address" />
				                        </div>
                                <div class="d-md-flex justify-content-start align-items-center mb-4 py-2">

                                  <!-- Gender Container-->
                                  <h6 class="mb-0 me-4">Gender: </h6>
                                  <div class="form-check form-check-inline mb-0 me-4">
                                    <input class="form-check-input" type="radio" name="g" id="femaleGender" value="female" />
                                    <label class="form-check-label" for="femaleGender">Female</label>
                                  </div>
                                  <div class="form-check form-check-inline mb-0 me-4">
                                    <input class="form-check-input" type="radio" name="g" id="male" value="male" />
                                    <label class="form-check-label" for="maleGender">Male</label>
                                  </div>
                                </div>

                                <!-- Phone No. Container-->
                                <div class="form-outline mb-4">
                                  <input type="text" id="form3Example9" class="form-control form-control-lg" placeholder="Phone NO." name="phone"/>
                                </div>

                                <!--Qualification Area-->
				                        <div class="d-md-flex justify-content-start align-items-center mb-4 py-2">
				                          <h6 class="mb-0 me-4">Qualification: </h6>
				                          <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="10th" name="qual">
                                    <label class="form-check-label" for="inlineCheckbox1">10th</label>
                                  </div>
					                        <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="12th" name="qual">
                                    <label class="form-check-label" for="inlineCheckbox1">12th</label>
                                  </div>
					                        <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="graduation" name="qual">
                                    <label class="form-check-label" for="inlineCheckbox1">Graduation</label>
                                  </div>
                                </div>

                                
                                <div class="input-group">
                                  <button class="btn btn-outline-dark" type="button" id="inputGroupFileAddon04" onClick="getVideo()" data-bs-toggle="modal" data-bs-target="#staticBackdrop">Click Picture</button>
                                  <input type="text" class="form-control" name="img">
                                </div>

                                <!--Button Area-->
				                        <div class="d-flex justify-content-end pt-3">
                                  <button type="button" class="btn btn-outline-danger btn-lg">Reset all</button>
                                  <button type="submit" class="btn btn-warning btn-lg ms-2" name="button" value="Save">Submit form</button>
                                </div>
                              </div>
		                            <input type="hidden" name="st_id" value="<%=r%>">
		                    </form>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </section>


      <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-fullscreen-xxl-down">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="staticBackdropLabel">Take Live Photo</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" onClick="closeVideo()"></button>
            </div>
            <div class="modal-body">
              <center>
                <video id="myvideo" autoplay height="400" width='400'></video><input type="button" class="btn btn-outline-danger" onClick="takeshot()" value="shot" /><canvas height="300" width="400" id="canvas"></canvas>
              </center>
            </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" onClick="closeVideo()" data-bs-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary" data-bs-dismiss="modal" onClick="saveVideo()">Save</button>
          </div>
        </div>
      </div>
    </div>
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