const form = document.addMenuForm;
const btn = document.querySelector('button');
const inputs = document.querySelectorAll('input');


start()

btn.addEventListener('click', () => {
	btnClick()
});

function start(){
	inputs.forEach(input => {
		input.value	= '';
	})
}

function btnClick(){
	let nextPage = true
	inputs.forEach(input => {
		let inputVal = input.value.trim();
		if(inputVal.length == 0 && nextPage){
			nextPage = false
			alert('메뉴 이름, 메뉴 가격, 메뉴 사진 이름 등 넣어주세요');
		}
		if(nextPage){
			form.submit();
		}
	})
}