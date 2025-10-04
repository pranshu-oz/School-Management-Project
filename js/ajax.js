var request;

function init(){
if(window.XMLHttpRequest){
request=new XMLHttpRequest();
}
else if(window.ActiveXObject){
request=new ActiveXObject("Microsoft.XMLHttp");
}	
}
function sendData(){
    var course=document.exam.course.value;
    var sem=document.exam.semester.value;
init();
request.onreadystatechange=function(){
    if(request.status===200){
        document.getElementById("subject").innerHTML=this.responseText;
    }
}
request.open("GET","../common/innerdata.jsp?c="+course+"&s="+sem,true);
request.send();
}

function changeData(){
var roll=document.result.rollselect.value;
init();
request.onreadystatechange=function(){
    if(request.status===200){
        document.getElementById("content").innerHTML=this.responseText;
    }
}
request.open("POST","../common/selectdata.jsp?roll="+roll,true);
request.send();
	
}

function feedData(){
var roll=document.result.rollselect.value;
var practicle=document.result.practiclem.value;
var theory=document.result.theorym.value;
init();
request.onreadystatechange=function(){
    if(request.status===200){
        document.getElementById("content").innerHTML=this.responseText;
    }
}
request.open("POST","common/selectdata.jsp?roll="+roll+"&th="+theory+"&prac="+practicle,true);
request.send();
	
}



