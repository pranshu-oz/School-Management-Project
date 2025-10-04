<%@include file="../common/db_connect.jsp"%>
<%@page errorPage="../common/Error.jsp"%>
<%!
String user,question,ans,value;
%>
<%!
public void recovery(HttpServletRequest request,HttpServletResponse response,JspWriter out,HttpSession session)throws IOException, SQLException{
user=request.getParameter("uname");
question=request.getParameter("question");
ans=request.getParameter("ans");
rs=stmt.executeQuery("select *from userac where user_id='"+user+"'");
while(rs.next()){
if(rs.getString("seq").equals(question) && rs.getString("seqans").equals(ans)){
response.sendRedirect("../common/reset.jsp");
session.setAttribute("admin",user);
}
else
response.sendRedirect("../common/forget.jsp?msg= Question or answer not matched");
}
response.sendRedirect("../common/forget.jsp?msg= User Name is not matched");
}
%>
<%!
public void reset(HttpServletRequest request,HttpServletResponse response,JspWriter out,HttpSession session)throws IOException, SQLException{
user=(String)session.getAttribute("admin");
question=request.getParameter("newpass");
ans=request.getParameter("conpass");
if(!question.equals(ans)){
response.sendRedirect("../common/reset.jsp?msg= password is not matched");
}
int x=stmt.executeUpdate("update userac set user_pass='"+ans+"' where user_id='"+user+"'");
if(x>0){
con.close();
session.removeAttribute("admin");
response.sendRedirect("../index.jsp?msg=password updated succesfull");
}
else
out.print("not reset");
}
%>
<%!
public void logIn(HttpServletRequest request,HttpServletResponse response,JspWriter out,HttpSession session)throws Exception{
user=request.getParameter("uname");
ans=request.getParameter("pass");
rs=stmt.executeQuery("select *from student where roll="+user);
while(rs.next()){
if(rs.getString("dob").equals(ans)){
session.setAttribute("student",user);
response.sendRedirect("../profile_view.jsp?roll="+user);
}else
response.sendRedirect("../index.jsp?msg=Wrong Password");
}
response.sendRedirect("../index.jsp?msg=Wrong User Name");
}
%>
<%
value=request.getParameter("button");
if(value.equals("Recovery"))
recovery(request,response,out,session);
else if(value.equals("Reset Password"))
reset(request,response,out,session);
else if(value.equals("AdminLogin")){
response.sendRedirect("../index.jsp?login=admin");
}
else if(value.equals("StudentLogin")){
response.sendRedirect("../index.jsp?login=student");
}
else if(value.equals("Log In"))
logIn(request,response,out,session);
else
out.print("wrong request found!!!!");
%>