require_relative '../sections/card__register'

module Pages
    
    class Register < SitePrism::Page
    set_url '/'
   
    
    element :close_modal_link, 'a#btnCloseModal.styles__Button-sc-8zteav-5'
    element :container_invalid, '.styles__ContainerContent-sc-8zteav-1.cSdWPv'
    section :card_register, Sections::Card__Register, '.card__register'
   

    def preencher_form
        card_register.input_preencher
    end

    def form_invalid_password
        card_register.input_preencher_invalid_password
    end

    def has_card?
        has_css?('.card__register', visible: true)
    end

    def register_go
        click_button 'Registrar'
    end
        
      

    end
end