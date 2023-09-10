const form = document.hereOrNotForm;
const here = document.querySelector('#here');
const not = document.querySelector('#not');
const hereornot = document.querySelector('input');


here.addEventListener('click', ()=>{
	hereornot.value = "here";
	form.action = "/kiosk/menu";
	form.submit();
})

not.addEventListener('click', ()=>{
	hereornot.value = "not";
	form.action = "/kiosk/menu";
	form.submit();
})