const form = document.addAdminForm;
const inputs = document.querySelectorAll('input');
const btn = document.querySelector('button');

btn.addEventListener('click', () => {
	let nextPage = true;
	inputs.forEach(input => {
  		let inputVal = input.value.trim()
		let inputId = input.getAttribute('id');
		let account = inputId.substr(0, 12);
		if(inputVal.length == 0 && nextPage){
			nextPage = false
			alert('값을 입력해주세요')
		}
		if(account == "adminAccount" && inputId != "adminAccountNum2" && nextPage){
			if(inputVal.length < 6 || inputVal.length > 6){
				nextPage = false
				alert('계좌번호 첫번째 칸과 세번째 칸은 6자리 입니다.')
			}
		}
		else if(account == "adminAccount" && inputId == "adminAccountNum2" && nextPage){
			if(inputVal.length < 2 || inputVal.length > 2){
				nextPage = false
				alert('계좌번호 두번째 칸은 2자리 입니다.')
			}
		}
	})
	if(nextPage){
		form.submit();
	}
});