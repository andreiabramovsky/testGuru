/*class PasswordConfirmation {
  constructor(form) {
    this.form = form
    this.password = form.user_password
    this.password_confirmation = form.user_password_confirmation
    this.container = document.querySelector('div.container')

    this.setup()
  }

  resetParagraph() {
    let paragraph = document.querySelector('p.flash')
    if (paragraph) { this.container.parentNode.removeChild(paragraph) }
  }

  checkPasswords() {

    this.resetParagraph()

    let paragraph = document.createElement('p')

    if (this.password.value !== this.password_confirmation.value) {
      this.textNode = document.createTextNode("Passwords don't match!")
      paragraph.classList.add('flash', 'alert') 
    }
      else {
      this.textNode = document.createTextNode("Passwords match.")
      paragraph.classList.add('flash', 'notice') 
    }

    paragraph.appendChild(this.textNode)
    this.container.parentNode.insertBefore(paragraph, this.container)
  }

  setup() {
    this.form.addEventListener('keyup', event => {
      if (this.password.value != '' && this.password_confirmation.value != '') this.checkPasswords()
      else this.resetParagraph()
    })
  }
}

document.addEventListener('turbolinks:load', function() {
  const reg_class = document.getElementById('registration-form')
  if (reg_class) { 
    const reg_form = reg_class.querySelector('.new_user')
    if (reg_form) new PasswordValidation(reg_form) 
}
})*/

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
