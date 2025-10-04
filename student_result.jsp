<%@include file="./common/header.jsp"%>
<%! String val=null,sub;%>
<script src="js/ajax.js"></script>
<body id="body">
<form class="form-floating" action="./common/resultrecord.jsp" name="result">
<div class="container-lg-6">
<div class="col-md-4" >
<br>
<h3 style="color:red;"><%out.print(request.getParameter("msg"));%></h3>
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
<!--Define name and other field-->
<div id="content"></div>
</form>
</body>