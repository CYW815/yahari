const form = document.selectCustomerForm;
const select = document.getElementById('select');
const input = document.querySelector('input');
const btn = document.querySelector('button');

inputType();

select.addEventListener('change', () => {
	inputType();
});

btn.addEventListener('click', () => {
	form.submit()
})

 function inputType() {
	if(select.value == "전화번호"){
		input.setAttribute('id', 'phone')
		input.setAttribute('name', 'phone')
		input.setAttribute('placeholder', "000-0000-0000")
		
	}
	else if(select.value == "날짜"){
		input.setAttribute('id', 'date')
		input.setAttribute('name', 'date')
		input.setAttribute('placeholder', "yyMMdd")
	}
	else{
		input.setAttribute('id', 'listAll')
		input.setAttribute('name', 'listAll')
		input.setAttribute('placeholder', "")
	}
}
