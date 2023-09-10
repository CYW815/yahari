const form = document.addCustomer;
const btn = document.querySelector('button');
const inputs = document.querySelectorAll('input')

btn.addEventListener('click', () => {
	let check = true
	let stack = true;
	inputs.forEach(input => {
		let inputName = input.getAttribute('name');
		let inputVal = input.value.trim();
		if(inputVal.length == 0){
			check = false;
			input.setAttribute('placeholder', "값을 넣어주세요")
		}
		if(inputName == "phone2" || inputName == "phone3"){
			console.log(inputVal.length);
			if(inputVal.length != 4 && stack){
				check = false;
				stack = false;
				alert('전화번호는 4자리씩 써주세요')
			}	
		}
	})
	if(check){
		form.submit();
	}
})