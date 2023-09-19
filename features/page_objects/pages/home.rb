require_relative '../sections/card__register'
require_relative '../sections/card__login'
require_relative '../sections/home__ContainerButtons'

module Pages
    
    class Home < SitePrism::Page
    set_url '/home'

    element :close_modal_link, 'a#btnCloseModal.styles__Button-sc-8zteav-5'
    section :home_buttons, Sections::Home__ContainerButtons, '.home__ContainerButtons-sc-1auj767-13'
    section :card_register, Sections::Card__Register, '.card__register'
    section :card_login, Sections::Card__Login, '.card__login'
    element :botao_sair, '#btnExit'


  
   

    def select_operation
        home_buttons.click_button_by_text('operation')
    end
    
    def enter_home
        click_button 'Registrar'
        has_css?('.card__register', visible: true)
        card_register.input_preencher
        close_modal_link.click
        card_login.inputs_login
    end

    
    
end
end
