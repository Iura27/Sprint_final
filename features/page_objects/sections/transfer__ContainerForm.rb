
module Sections
    class Transfer__Form < SitePrism::Section
      
        element :campo_numero_conta, 'input[name="accountNumber"]'
        element :campo_digit, 'input[name="digit"]'
        element :campo_valor_transferencia, 'input[name="transferValue"]'
        element :campo_descricao, 'input[name="description"]'
        element :botao_transferir_agora, 'button.style__ContainerButton-sc-1wsixal-0.CMabB.button__child'
        

   

    def preencher_form_transfer
        campo_numero_conta.set('274')
        campo_digit.set('9')
        campo_valor_transferencia.set('200')
        campo_descricao.set('Realização de Transeferência')
        botao_transferir_agora.click
    end

    

        
    end
end