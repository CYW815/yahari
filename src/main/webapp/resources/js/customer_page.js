const form = document.cashChargeForm;
const btns = document.querySelectorAll('button');
const inputBalance = document.getElementById('balance');

inputBalance.value = '';

btns.forEach(btn => {
	btn.addEventListener('click', () => {
		let btnId = btn.getAttribute('id');
		if(btnId != "btn"){
			inputBalance.value = btnId;
		}
		else{
			form.submit();
		}
	})
})