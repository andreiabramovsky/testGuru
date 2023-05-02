class PasswordConfirmation {
  constructor(form) {
    
    this.form = form
    this.password = form.user_password
    this.password_confirm = form.user_password_confirm
    this.setup()
  }

  resetStyleForInputs() {
    this.password_confirm.classList.remove('input-green')
    this.password_confirm.classList.remove('input-red')
  }


  checkPasswords() {
    this.resetStyleForInputs()

    if (this.password_confirm.value === this.password.value) {
      this.password_confirm.classList.add('input-green') 
    } else {
      this.password_confirm.classList.add('input-red')
    }
  }

  setup() {
    this.form.addEventListener('keyup', event => {
      if(this.password.value != '') this.checkPasswords()
    })
  }
}

window.onload = function() {
  const reg_form = document.getElementById('new_user')
  if(reg_form) new PasswordConfirmation(reg_form) 
}
