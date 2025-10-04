<%@page errorPage="Error.jsp"%>
<%@include file="db_connect.jsp"%>
<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
<script src="../bootstrap/js/bootstrap.min.js"></script>
<script src="../bootstrap/js/jquery-3.6.3.js"></script>
<script src="../js/component.js"></script>
<div>
<a href="javascript:print()">print</a>
<h1> Result</h1>
<%!
String roll,name,SQL;
%>
<%
roll=(String)session.getAttribute("roll");
rs=stmt.executeQuery("select *from student where roll="+roll);
if(rs.next()){
%>
<div class="row g-2">
<div class="col-md">
<div class="form-floating">
<input type="text" readonly class="form-control id=floatingInputGrid" value="<%=rs.getString("name")%>">
<label for="floatingInputGrid">Name</label></div></div>
<div class="col-md">
<div class="form-floating">
<input type="text" class="form-control id=floatingInputGrid" value="<%=rs.getString("fname")%>" readonly>
<label for="floatingInputGrid">Father Name</label></div></div></div>

<div class="row g-2">
<div class="col-md">
<div class="form-floating">
<input type="text" readonly class="form-control id=floatingInputGrid" value="<%=rs.getString("dob")%>">
<label for="floatingInputGrid">DOB</label></div></div>
<div class="col-md">
<div class="form-floating">
<input type="text" class="form-control id=floatingInputGrid" value="<%=rs.getString("course")%>" readonly>
<label for="floatingInputGrid">Course</label></div></div></div>
<%}%>
<%
SQL=String.format("select *from RES%s inner join subject on subject.s_name=RES%s.rt_sub",roll,roll);
rs=stmt.executeQuery(SQL);
while(rs.next()){
%>

<div class="row g-3">
<div class="col-3">
<div class="form-floating">
<input type="text" class="form-control" name="sub" id="floatingInputGrid" value="<%=rs.getString("rt_sub")%>" readonly>
<label for="floatingInputGrid">Exam Subject</label>
</div></div>
<div class="col-sm">
<div class="form-floating">
<input type="text" class="form-control" id="floatingInputGrid" value="<%=rs.getInt("s_practical")%>" readonly>
<label for="floatingInputGrid">Prcticle</label></div></div>
<div class="col-sm"><div class="form-floating">
<input type="text" class="form-control" id="floatingInputGrid" value="<%=rs.getInt("s_theory")%>" readonly>
<label for="floatingInputGrid">Theory</label></div></div>
<div class="col-sm"><div class="form-floating">
<input type="text" name="th" class="form-control" id="floatingInputGrid" readonly value="<%=rs.getString("rt_th")%>">
<label for="floatingInputGrid">Theory Mark</label></div></div>
<div class="col-sm"><div class="form-floating">
<input type="text" class="form-control" name="pr" id="floatingInputGrid" value="<%=rs.getString("rt_pr")%>" readonly>
<label for="floatingInputGrid">Practicle Mark</label></div></div></div>
<%}%>
</div>