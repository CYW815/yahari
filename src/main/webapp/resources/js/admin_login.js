const form = document.adminLoginForm;
const input = document.querySelector('input');
const btn = document.querySelector('button');

btn.addEventListener('click', () => {
	let nextPage = true;
	let inputVal = input.value.trim();
	if(inputVal.length == 0 && nextPage){
		nextPage = false;
		alert('비밀번호를 입력해주세요');
	}
	if(nextPage){
		form.action = "/kiosk/admin_login"
		form.submit();
	}
});