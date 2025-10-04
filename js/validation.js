function update(r){
	if(confirm("Are You Sure to Update Entry?")){
		document.view.r.value=r;
		document.view.button.value="Send";
		document.view.submit();
	}
	
}
function student_delete(st_id){
	if(confirm("Are You Sure to Delete?")){
		document.view.button.value="Delete";
		document.view.st_id.value=st_id;
		document.view.submit();
	}
	
}
