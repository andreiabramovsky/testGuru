class PasswordConfirmation {
  constructor(form) {
    this.form = form
    this.password = form.user_password
    this.password_confirmation = form.user_password_confirm
    this.setup()
  }

  resetStyleForInputs() {
    this.password_comfirm.classList.remove('input-green')
    this.password_comfirm.classList.remove('input-red')
  }


  checkPasswords() {
    this.resetStyleForInputs()

    if (this.password_comfirm.value === this.password.value) {
      this.password_comfirm.classList.add('input-green') 
    } else {
      this.password_comfirm.classList.add('input-red')
    }
  }

  setup() {
    this.form.addEventListener('keyup', event => {
      if(this.password.value != '') this.checkPasswords()
    })
  }
}

const reg_form = document.getElementById('registration-user')
if(reg_form) new PasswordConfirmation(reg_form) 
