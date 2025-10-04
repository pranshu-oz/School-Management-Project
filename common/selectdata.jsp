<%@include file="./db_connect.jsp"%>
<%@page errorPage="./Error.jsp"%>
<%! String roll,SQL,sub;
int id;
%>
<%
roll=request.getParameter("roll");
SQL="select *from student where roll='"+roll+"'";
rs=stmt.executeQuery(SQL);
while(rs.next()){
out.println("<br>");
out.print("<div class=row g-2><div class=col-md><div class=form-floating><input type=text readonly class=form-control id=floatingInputGrid value="+rs.getString("name")+"><label for=floatingInputGrid>Name</label></div></div><div class=col-md><div class=form-floating><input type=text class=form-control id=floatingInputGrid value="+rs.getString("fname")+" readonly><label for=floatingInputGrid>Father Name</label></div></div></div>");
out.println("<br>");
out.println("<div class=row g-2><div class=col-md><div class=form-floating><input type=text readonly class=form-control id=floatingInputGrid value="+rs.getString("gen")+"><label for=floatingInputGrid>Gender</label></div></div><div class=col-md><div class=form-floating><input type=text class=form-control id=floatingInputGrid value="+rs.getString("course")+" readonly><label for=floatingInputGrid>Course</label></div></div></div>");
}
out.println("<br><h4>Please Enter Records</h4>");
SQL="select *from exam inner join subject on subject.s_name=exam.ex_subject";
rs=stmt.executeQuery(SQL);
while(rs.next()){
out.println("<br>");
out.println("<div class=row g-0><div class=col-4><div class=form-floating><input type=text class=form-control name=sub id=floatingInputGrid value='"+rs.getString("ex_subject")+"' readonly><label for=floatingInputGrid>Exam Subject</label></div></div><div class=col-sm><div class=form-floating><input type=text class=form-control id=floatingInputGrid value="+rs.getInt("s_practical")+" readonly><label for=floatingInputGrid>Prcticle</label></div></div><div class=col-sm><div class=form-floating><input type=text class=form-control id=floatingInputGrid value="+rs.getInt("s_theory")+" readonly><label for=floatingInputGrid>Theory</label></div></div><div class=col-sm-2><div class=form-floating><input type=text name=th class=form-control id=floatingInputGrid><label for=floatingInputGrid>Theory Mark</label></div></div><div class=col-sm-2><div class=form-floating><input type=text class=form-control name=pr id=floatingInputGrid><label for=floatingInputGrid>Practicle Mark</label></div></div></div>");
}
out.print("<span><input type=submit class='btn btn-outline-success' value=Save>&nbsp;&nbsp;<input type=reset class='btn btn-outline-danger' value=Reset></span>");
con.close();
%>
