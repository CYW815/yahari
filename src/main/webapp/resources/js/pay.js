const point = document.getElementById('point');
const usePoint = document.getElementById('usePoint');
const balance = document.getElementById('balance');
const pay = document.getElementById('pay');
const form = document.payForm;
const btn = document.getElementById('payment');
const pBtn = document.getElementById('pBtn')

btn.addEventListener('click', () => {
	if(point != null && parseFloat(point.value.trim()) < parseFloat(usePoint.value.trim())){
		alert('잔여 포인트가 부족합니다.')
	}
	else{
		form.action = '/kiosk/pay'
		form.submit();
	}
})
if(pBtn != null){
	pBtn.addEventListener('click', () => {
	if(point != null && parseFloat(point.value.trim()) < parseFloat(usePoint.value.trim())){
		alert('잔여 포인트가 부족합니다.')
	}
	else{
		balance.value = pay.value - usePoint.value
	}
	})
}
balance.value = pay.value;