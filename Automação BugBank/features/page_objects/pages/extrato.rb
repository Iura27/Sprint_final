require_relative '../sections/card__register'
require_relative '../sections/card__login'
require_relative '../sections/home__ContainerButtons'

module Pages
    
    class Extrato < SitePrism::Page
    set_url '/bank-statement'
   
    section :home_buttons, Sections::Home__ContainerButtons, '.home__ContainerButtons-sc-1auj767-13'
    section :card_register, Sections::Card__Register, '.card__register'
    section :card_login, Sections::Card__Login, '.card__login'

    element :container_extrato, '.bank-statement__ContainerBalance-sc-7n8vh8-9.dntobx'
    element :close_modal_link, 'a#btnCloseModal.styles__Button-sc-8zteav-5'
    element :container_transactions, '.bank-statement__ContainerTransactions-sc-7n8vh8-8.CUAzQ'
    element :container_back_button, '.bank-statement__ContainerBackButton-sc-7n8vh8-5.kKAsAS'
    element :close_button, '.styles__ContainerCloseButton-sc-8zteav-2.ffzYTz a'
    
    def enter_home
        click_button 'Registrar'
        has_css?('.card__register', visible: true)
        card_register.input_preencher
        close_button.click
        card_login.inputs_login
    end


    def select_operation
        home_buttons.click_button_by_text('operation')
    end
    
    def button_voltar
        container_back_button.click
    end
    
end
end
