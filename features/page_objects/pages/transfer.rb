require_relative '../sections/card__register'
require_relative '../sections/card__login'
require_relative '../sections/home__ContainerButtons'
require_relative '../sections/transfer__ContainerForm'

module Pages
    
    class Transfer < SitePrism::Page
    set_url '/transfer'
   
    section :form_transfer, Sections::Transfer__Form, 'form.styles__ContainerFormTransfer-sc-1oow0wh-0.hehMDu'
    section :home_buttons, Sections::Home__ContainerButtons, '.home__ContainerButtons-sc-1auj767-13'
    section :card_register, Sections::Card__Register, '.card__register'
    section :card_login, Sections::Card__Login, '.card__login'
    element :transfer_form, 'form.styles__ContainerFormTransfer-sc-1oow0wh-0.hehMDu'
    element :close_modal_link, 'a#btnCloseModal.styles__Button-sc-8zteav-5'
    element :modal_container, '.styles__ContainerContent-sc-8zteav-1.cSdWPv'
    element :container_back_button, 'div.transfer__ContainerBackButton-sc-1yjpf2r-4.dnIDnp'
    element :invalid_transfer, '.styles__ContainerContent-sc-8zteav-1.cSdWPv'
    element :transfer_button, 'button.style__ContainerButton-sc-1wsixal-0.CMabB.button__child'


    def preencher_formulario_de_transferencia
        form_transfer.preencher_form_transfer
      end
   

    def enter_home
        click_button 'Registrar'
        has_css?('.card__register', visible: true)
        card_register.input_preencher
        close_modal_link.click
        card_login.inputs_login
    end


    def select_operation
        home_buttons.click_button_by_text('operation')
    end
    

    def click_transfer(texto_do_botao)
        find("button.style__ContainerButton-sc-1wsixal-0.CMabB.button__child", text: texto_do_botao).click
      end



    def button_voltar
        container_back_button.click
    end

      
      
    
end
end
