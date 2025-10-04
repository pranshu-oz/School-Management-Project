<%@include file="../common/db_connect.jsp"%>
<%@page errorPage="../common/Error.jsp"%>
<%@page import="java.io.*"%>
<%!
String r=null,n,g,c,value,address,phone,qual="",fn,dob,SQL,img;
String date="",desc="",course="",msg;
String []name=new String[10];
int total=0,paid=0,bal=0;
%>
<%!
public void save(HttpServletRequest request,HttpServletResponse response,JspWriter out)throws Exception{
r=request.getParameter("st_id");
n=request.getParameter("n");
g=request.getParameter("g");
c=request.getParameter("c");
address=request.getParameter("address");
phone=request.getParameter("phone");
qual=request.getParameter("qual");
fn=request.getParameter("fn");
dob=request.getParameter("dob");
img=request.getParameter("img");

if(!r.equals("null")){
SQL="update student set name='"+n+"',gen='"+g+"',course='"+c+"',qualifi='"+qual+"',address='"+address+"',phone='"+phone+"',dob='"+dob+"',fname='"+fn+"' where roll='"+r+"',images='"+img+"'";

msg="Record is updated";
}else{
SQL="insert into student(ROLL,NAME,FNAME,GEN,ADDRESS,PHONE,COURSE,DOB,QUALIFI,IMAGES) values(stu_sqe.nextval,'"+n+"','"+fn+"','"+g+"','"+address+"','"+phone+"','"+c+"','"+dob+"','"+qual+"','"+img+"')";
msg="Record is saved";
}
int x=stmt.executeUpdate(SQL);
if(x>0){
con.close();
response.sendRedirect("../student_view.jsp?msg="+msg);
}
}
%>
<%!
public void delete(HttpServletRequest request,HttpServletResponse response,JspWriter out)throws Exception{
r=request.getParameter("st_id");
String SQL="delete from student where roll='"+r+"'";
int x=stmt.executeUpdate(SQL);
if(x>0)
response.sendRedirect("../student_view.jsp?msg=entry deleted!!");
else
out.println("not deleted");
con.close();
}
%>
<%!
public void fee_update(HttpServletRequest request,HttpServletResponse response,JspWriter out)throws Exception{
String date="",desc="",course="",total,balance;
int paid;
r=request.getParameter("r");
total=request.getParameter("total");
paid=Integer.parseInt(request.getParameter("paid"));
balance=request.getParameter("balance");
desc=request.getParameter("desc");
c=request.getParameter("course");
date=request.getParameter("date");
paid+=Integer.parseInt(request.getParameter("paidold"));
SQL="select *from fees where st_id="+r;
rs=stmt.executeQuery(SQL);
if(!rs.next()){
SQL="insert into fees(F_ID,TOTAL,PAID,BALANCE,D_TIME,ST_ID,DES,COURSE) values(fee_id.nextval,"+total+","+paid+","+balance+",'"+date+"',"+r+",'"+desc+"','"+c+"')";
msg="record is inserted";
}else{
SQL="update fees set total="+total+",paid="+paid+",balance="+balance+",d_time='"+date+"',des='"+desc+"',course='"+c+"' where st_id="+r+"";
msg="record is updated";
}
int x=stmt.executeUpdate(SQL);
if(x>0){
response.sendRedirect("../student_view.jsp?msg="+msg+"");
}
con.close();
}
%>
<%!
public void fees(HttpServletRequest request,HttpServletResponse response,HttpSession session)throws Exception{
r=request.getParameter("roll");
session.setAttribute("roll",r);
response.sendRedirect("../admin/student_fees.jsp?roll="+r);
}
%>
<%!
public void send(HttpServletRequest request,HttpServletResponse response,JspWriter out)throws Exception{
r=request.getParameter("r");
String SQL="select *from student where roll="+r+"";
rs=stmt.executeQuery(SQL);
while(rs.next()){
n=rs.getString("name");
fn=rs.getString("fname");
phone=rs.getString("phone");
address=rs.getString("address");
qual=rs.getString("qualifi");
c=rs.getString("course");
g=rs.getString("gen");
dob=rs.getString("dob");
img=rs.getString("images");
}
response.sendRedirect("../student_save.jsp?roll="+r+"&gen="+g+"&course="+c+"&name="+n+"&phone="+phone+"&address="+address+"&qual="+qual+"&dob="+dob+"&fname="+fn+"&img="+img+"");
}
%>
<%!
public void logIn(HttpServletRequest request,HttpServletResponse response,JspWriter out,HttpSession session)throws Exception{
r=request.getParameter("uname");
n=request.getParameter("pass");
rs=stmt.executeQuery("select *from userac where user_id='"+r+"'");
while(rs.next()){
if(rs.getString("user_pass").equals(n)){
session.setAttribute("admin",r);
response.sendRedirect("../admin/index.jsp?msg=Welcome login Succesfull");
}else
response.sendRedirect("../index.jsp?msg=Wrong Password");
}
response.sendRedirect("../index.jsp?msg=Wrong User Name");
}
%>
<%!
public void exam(HttpServletRequest request,HttpServletResponse response,JspWriter out,HttpSession session)throws Exception{
c=request.getParameter("course");
n=request.getParameter("semester");
fn=request.getParameter("subject");
date=request.getParameter("date");
r=request.getParameter("time");
desc=request.getParameter("discription");
n+=" semester exam";
SQL="insert into exam values('"+n+"','"+c+"','"+fn+"','"+date+"','"+r+"','"+desc+"')";
int x=stmt.executeUpdate(SQL);
if(x>0){
con.close();
response.sendRedirect("../student_view.jsp?msg=exam details is submitted");
}
out.print("something wrong");
}
%>
<%!
public void result(HttpServletRequest request,HttpServletResponse response,JspWriter out,HttpSession session)throws Exception{
r=request.getParameter("roll");
n=request.getParameter("name");
fn=request.getParameter("fn");
dob=request.getParameter("dob");
rs=stmt.executeQuery("select *from student where roll="+r);
while(rs.next()){
if(rs.getString("name").equals(n)&&rs.getString("fname").equals(fn)&&rs.getString("dob").equals(dob)){
session.setAttribute("roll",r);
response.sendRedirect("../common/downloadresult.jsp?msg=Welcome login Succesfull");
}else
response.sendRedirect("../result_login.jsp?msg=Invalid Credential");
}
response.sendRedirect("../result_login.jsp?msg=Invalid Roll NO.");
}
%>

<%
value=request.getParameter("button");
if(value.equals("Save"))
save(request,response,out);
else if(value.equals("Delete"))
delete(request,response,out);
else if(value.equals("Send"))
send(request,response,out);
else if(value.equals("fees"))
fees(request,response,session);
else if(value.equals("Fees Update"))
fee_update(request,response,out);
else if(value.equals("Log In"))
logIn(request,response,out,session);
else if(value.equals("Exam"))
exam(request,response,out,session);
else if(value.equals("Go Back")){
if(session.getAttribute("uname")==null){
response.sendRedirect("../index.jsp?msg=please log in");
}
response.sendRedirect("../student_view.jsp");
}
else if(value.equals("go"))
result(request,response,out,session);
else
out.print("not found : "+value);
%>