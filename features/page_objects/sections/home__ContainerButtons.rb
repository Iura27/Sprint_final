module Sections
    class Home__ContainerButtons < SitePrism::Section
      
        element :transfer_button, 'a#btn-TRANSFERÊNCIA'
        element :extrato_button, 'a#btn-EXTRATO'
        element :extrato_text, 'p.home__TransactionText-sc-1auj767-10.hMDuGX'
    
   
        def click_button_by_text(text)
            all_buttons = all('a.home__Button-sc-1auj767-15.heVuFC')  # Encontra todos os botões na página
            all_texts = all('p.home__TransactionText-sc-1auj767-10.hMDuGX')  # Encontra todos os elementos de texto na página
          
            button_to_click = nil
          
            all_texts.each_with_index do |element, index|
              if element.text == text
                button_to_click = all_buttons[index]
                break
              end
            end
          
            if button_to_click
              button_to_click.click
            else
              raise "Texto '#{text}' não encontrado na div."
            end
          end
          
      

        
    end
end