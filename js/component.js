let video=null;
let newdata=null;
let canvas=null;

function printout(){
window.print();	
}
function getVideo(){
	video=document.getElementById("myvideo");
	if(navigator.mediaDevices.getUserMedia){
	navigator.mediaDevices.getUserMedia({video:true})
	.then(function(stream){
		video.srcObject=stream; 
		})
	.catch(function (error){
		console.log("something went wrong"+error);
	});
	}else{
	console.log("not Allowed");	
	}
}
function takeshot() {
			canvas=document.getElementById("canvas");
			canvas.getContext('2d').drawImage(video,0,0,400,300);
}
function closeVideo(){
	video.srcObject.getTracks().forEach(track => track.stop())
}
function saveVideo(){
			video.srcObject.getTracks().forEach(track => track.stop())	
			let data=canvas.toDataURL("image/jpeg");
			console.log(data);
			newdata=data.replace('data:', '').replace(/^.+,/, '');
			
			var name=document.getElementsByName("n")[0];
			let st_id=name.value;
			console.log(st_id);
			if(st_id==""){
			alert("Please Enter name First");	
			}else{
			
$.ajax({
    url: '../student_cam.jsp?id='+st_id,
    type: 'POST',
    data: newdata,
    processData: false,
    contentType: "text/html",
    success: function(data){
		document.getElementsByName("img")[0].value=data;
    }
});
			}
        }
		