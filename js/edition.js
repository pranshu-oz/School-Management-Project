function edit(r,n,g,c,p,q,a,f,d,img){
	if(n!="null"){
		
		document.getElementById("rolln").innerText="Roll No. :     ";
		document.getElementById("roll").innerText=r;
		document.getElementsByName("n")[0].value=n;
		cb=document.getElementsByName("g");
		cb[0].checked=(cb[0].value==g);
		cb[1].checked=(cb[1].value==g);
		document.getElementsByName("c")[0].value=c;
		document.getElementsByName("phone")[0].value=p;
		document.getElementsByName("address")[0].value=a;
		document.getElementsByName("fn")[0].value=f;
		document.getElementsByName("dob")[0].value=d;
		document.getElementsByName("img")[0].value=img;
	}
	
}
