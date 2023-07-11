const form = document.querySelector('signup_form');

const name = form.elements.namedItem('user_name');
const email = form.elements.namedItem('email');
const password = form.elements.namedItem('passwd');

const nameSmall = document.querySelector('.name-small');
const emailSmall = document.querySelector('.email-small');
const passwordSmall = document.querySelector('.password-small');

const nameReg = /[A-Za-z]{3,}/;
const emailReg = /^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/;
const passReg = /^(?=.*\d).{8,15}$/;


name.addEventListener('input', validateInput);
email.addEventListener('input', validateInput);
password.addEventListener('input', validateInput);

name.addEventListener('blur', noFocus);
email.addEventListener('blur', noFocus);
password.addEventListener('blur', noFocus);

form.addEventListener('submit', function(e) {
  e.preventDefault();
})


function validateInput(e) {
 let target = -e.target;
  // console.log(target)
  
  if(target.name == 'userName') {
    if(nameReg.test(target.value)) {
      target.classList.add('valid');
      target.classList.remove('invalid');
      nameSmall.innerHTML = ' ';
    } else {
      target.classList.add('invalid');
      target.classList.remove('valid');
      nameSmall.innerHTML = 'Name should be at least 3 characters';
      alert("name")
    }
  }
  
   if (target.name == 'userEmail') {
    if(emailReg.test(target.value)) {
      target.classList.add('valid');
      target.classList.remove('invalid');
      emailSmall.innerHTML = ' ';
    } else {
      target.classList.add('invalid');
      target.classList.remove('valid');
      emailSmall.innerHTML = 'Enter valid email address';
      alert("email")
    }
  }
  
  if (target.name == 'userPassword') {
    if(passReg.test(target.value)) {
      target.classList.add('valid');
      target.classList.remove('invalid');
      passwordSmall.innerHTML = ' ';
    } else {
      target.classList.add('invalid');
      target.classList.remove('valid');
      passwordSmall.innerHTML = '8-16 characters with at least one number';
    }
  } 
}



function noFocus(e) {
  let target = e.target;
  target.classList.remove('valid', 'invalid')
}

// console.log(form.elements.namedItem('header'))



