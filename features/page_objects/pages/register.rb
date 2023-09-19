require_relative '../sections/card__register'

module Pages
    
    class Register < SitePrism::Page
    set_url '/'
   
    
    element :close_modal_link, 'a#btnCloseModal.styles__Button-sc-8zteav-5'
   

    def preencher_form
        email_input_register.set('iura@email.com')
        name_input.set('Iura')
        password_input_register.set('1234')
        password_confirmation_input.set('1234')
        custom_element.click
        cadastrar_button.click
        close_modal_link.click
        email_input_login.set('iura@email.com')
        password_input_login.set('1234')
        acessar_button.click

    end

    def has_card?
        has_css?('.card__register', visible: true)
    end

    def register_go_page
        click_button 'Registrar'
    end
        
      

    end
end