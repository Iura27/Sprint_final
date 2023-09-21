module Sections
    class Card__Register < SitePrism::Section
      
    element :email_input_register, 'div.card__register input[type="email"]'
    element :name_input, 'input[name="name"].input__default'
    element :password_input_register, 'div.card__register input[name="password"].input__default'
    element :password_confirmation_input, 'input[name="passwordConfirmation"].input__default'
    element :custom_element, '.styles__Container-sc-1pngcbh-0.kIwoPV'
    element :cadastrar_button, 'button.style__ContainerButton-sc-1wsixal-0.CMabB.button__child'
    
   
   

    def input_preencher
        email_input_register.set('iura@email.com')
        name_input.set('Iura')
        password_input_register.set('1234')
        password_confirmation_input.set('1234')
        custom_element.click
        cadastrar_button.click
    end

    def input_preencher_invalid_password
        email_input_register.set('iura@email.com')
        name_input.set('Iura')
        password_input_register.set('1234')
        password_confirmation_input.set('4321')
        custom_element.click
        cadastrar_button.click
    end

   

        
    end
end