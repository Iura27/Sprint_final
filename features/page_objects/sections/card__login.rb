module Sections
    class Card__Login < SitePrism::Section
      
  
    element :close_modal_link, 'a#btnCloseModal.styles__Button-sc-8zteav-5'
    element :email_input_login, 'div.card__login input[type="email"]'
    element :password_input_login, 'div.card__login input[name="password"].input__default'
    element :acessar_button, 'button[type="submit"].style__ContainerButton-sc-1wsixal-0.otUnI.button__child'
    element :transfer_button, 'a#btn-TRANSFERÊNCIA'
   

    def inputs_login
        email_input_login.set('iura@email.com')
        password_input_login.set('1234')
        acessar_button.click
    end

        
    end
end