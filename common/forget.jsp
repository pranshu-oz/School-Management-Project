<center>
<%
out.println(request.getParameter("msg"));

%>
</center>
<form id="forget" name="forget" method="get" action="../lib/admin.jsp">
<center>
	<div><h1>Password Recovery Panel</h1></div>
    User Name: <input type="text" name="uname" placeholder="Enter user name" /><br />
	<br />
	Sequerity Question: <select name="question"><option>Plz select Sequerity Question</option>
	<option>what is name of your 1st school</option>
	<option>what is your pet name</option>
	<option>what is your best friend name</option>
	</select><br />
	<br />
	Sequerity Answer: <input type="password" name="ans" placeholder="Enter the Sequerity Answer" /><br />
	<br />
	<input type="submit" value="Recovery" name="button"  />
	<input type="reset" value="reset" name="reset" />
</center>
</div>
</form>