const form = document.updateToppingForm;
const inputs = document.querySelectorAll('input');
const btn = document.querySelector('button');

btn.addEventListener('click', () => {
	let nextPage = true;
	inputs.forEach(input => {
		let inputVal = input.value.trim();
		if (inputVal.length == 0){
			nextPage = false
			alert('값을 입력해 주세요')
		}
	})
	if(nextPage){
		form.submit();
	}
})