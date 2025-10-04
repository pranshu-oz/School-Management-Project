<center>
<%!
String ur;
%>
<%
ur=(String)session.getAttribute("admin");
if(ur==null){
response.sendRedirect("./forget.jsp?msg=please Enter user_id");
}
%>
</center>
<form id="reset" name="reset" method="get" action="../lib/admin.jsp">
<center>
	<div><h1> Reset Password </h1></div>
    New Password: <input type="password" name="newpass" placeholder="Enter new Password" /><br />
	<br />
	Confirm PassWord: <input type="password" name="conpass" placeholder="Enter Confirm Password"/><br />
	<input type="hidden" value="<%=ur%>" name="uname" />
	<input type="submit" value="Reset Password" name="button"  />
	<input type="reset" value="Cancel" name="reset" />
</center>
</div>
</form>
