require_relative '../sections/card__register'
require_relative '../sections/card__login'

module Pages
  class Login < SitePrism::Page
    set_url '/'

    element :close_modal_link, 'a#btnCloseModal.styles__Button-sc-8zteav-5'

    section :card_register, Sections::Card__Register, '.card__register'
    section :card_login, Sections::Card__Login, '.card__login'
    element :invalid_login, '.styles__ContainerContent-sc-8zteav-1.cSdWPv'

    def preencher_form
      card_register.input_preencher
      close_modal_link.click
    end

    def form_login
      card_login.inputs_login
    end

    def register_go
      click_button 'Registrar'
    end

    def has_card?
      has_css?('.card__register', visible: true)
    
    end

    def login_invalid
      card_login.email_input_login.set('iura@email.com')
      card_login.password_input_login.set('123456')
      card_login.acessar_button.click
    end
  
  
  end
end
