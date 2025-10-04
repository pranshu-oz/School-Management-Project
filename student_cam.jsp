<%! String r,n,g,c,phone,fname,qual,dob,address;%>
<%@page errorPage="./common/Error.jsp"%>
<%@page import="java.io.*"%>
<%@include file="./common/db_connect.jsp"%>
<%@page import="javax.xml.bind.DatatypeConverter"%>
<%@page import="java.util.*"%>
<%@page import="java.util.stream.*"%>
<%@page import="java.nio.charset.StandardCharsets"%>
<%
String img=request.getParameter("id").trim();
String str= request.getReader().lines().collect(Collectors.joining(System.lineSeparator()));
System.out.print(str);
byte []bImg64 = str.getBytes(StandardCharsets.UTF_8);
byte[] bImg = Base64.getMimeDecoder().decode(bImg64);
FileOutputStream fos=new FileOutputStream("C:/Program Files/Apache Software Foundation/Tomcat 8.5/webapps/Student Management/uploads/"+img+".png");
fos.write(bImg);
fos.close();
out.print(img+".png");
%>
