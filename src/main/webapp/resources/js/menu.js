const cart = document.querySelector('#cart');
const imgs = document.querySelectorAll('img');
let btns;
const form = document.menuForm;
const payment = document.querySelector('.payment');
imgs.forEach(i => {
	i.addEventListener('click', function(){
		let duplication = false;
		let menuName = i.nextElementSibling.nextElementSibling.innerText;
		let str = `<div class="cartMenu"> 
			<input id="menuName" name="menuName" type="text" readonly value="${menuName}">
			<input id="menuCount" name="menuCount" type="number" value="1">
			<button type="button" class="delete">X</button>
			</div>`;
		let menus = document.querySelectorAll('input[readonly]');
		if(menus.length == 0){
			cart.insertAdjacentHTML("beforeend", str);
			btns = document.querySelectorAll('.delete');
			return;
		}
		menus.forEach(m => {
			if(m.value == menuName){
				duplication = true;
				return;
			}
		})
		if(!duplication){
			cart.insertAdjacentHTML("beforeend", str);
			btns = document.querySelectorAll('.delete');
		}
		btns.forEach(b => {
			b.addEventListener('click', function() {
				this.parentElement.remove();
			})
		})
	})
})
payment.addEventListener('click', () => {
	form.submit();
})

const menuNav = document.querySelectorAll('.list');
const menu = document.querySelectorAll('.menu');
menuNav.forEach(n => {
	n.addEventListener('click', function() {
		let s = '';
		if(this.getAttribute('class').includes('list1')){
			s = 'ramen';
		}
		else if(this.getAttribute('class').includes('list2')){
			s = 'side';
		}
		else if(this.getAttribute('class').includes('list3')){
			s = 'drink';
		}
		else if(this.getAttribute('class').includes('list4')){
			s = 'topping';
		}
		menus(s);
	})
})


function menus(s){
	console.log(s)
	menu.forEach(m => {
		m.classList.add('hidden')
		if(m.getAttribute('class').includes(s)){
			m.classList.remove('hidden')
		}
	})
}





