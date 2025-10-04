<script src="js/validation.js"></script>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="bootstrap/js/jquery-3.6.3.js"></script>
<%@include file="db_connect.jsp"%>
<%@page errorPage="common/Error.jsp"%>
<%! String user;%>
<%
user=(String)session.getAttribute("uname");
if(user==null){
response.sendRedirect("./index.jsp?msg=Please Log in First");
}
%>
<center>
<h1 id="arun">Arunendra IAS Academy</h1>
  <nav class="navbar navbar-expand-lg" style=" background-color:#33FF99;">
  <div class="container-fluid">
    <a class="navbar-brand" href="#"><img src="image/sch.jpg" height="40" width="50" /></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="./student_save.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="./student_view.jsp?msg=Welcome To View Section">Student</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="./exam.jsp">Exam</a>
        </li>
		<li class="nav-item">
          <a class="nav-link active" aria-current="page" href="./student_result.jsp">Result</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Course</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="./common/logout.jsp">Logout</a>
        </li>
      </ul>
      <form class="d-flex" action="./student_view.jsp" role="search">
        <input class="form-control me-2" type="search" name="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
