 function logchange(v){
if(v==1){
document.login.uname.placeholder="Username";
document.login.pass.placeholder="Password";
document.login.action="./lib/student.jsp"
}
else{
document.login.uname.placeholder="Student Roll No.";
document.login.pass.placeholder="Date Of Birth";
document.login.action="./lib/admin.jsp"
}
}