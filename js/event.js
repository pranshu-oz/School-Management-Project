function zero(){
	document.fees.paid.value=0;
}
function calc(){
	let a=document.fees.total.value;
	let b=document.fees.paid.value;
	let c=a-b;
	document.fees.balance.value=c;
}