Dado('que esteja na página de transferência') do
    @transfer_page = Pages::Transfer.new
    @transfer_page.load
    @transfer_page.enter_home
    operation_selected = Factory::Static.static_data('operation_transfer')
    @transfer_page.home_buttons.click_button_by_text(operation_selected) 
  end
  
  Quando('insiro o todos os dados corretos requeridos na operação') do
    @transfer_page.preencher_formulario_de_transferencia
  end
  
  Quando('clico em {string}') do |texto_do_botao|
    @transfer_page.click_transfer(texto_do_botao)
  end
  
  
  #Então('devo ver uma mensagem de confirmação de sucesso') do
   # expect(@transfer_page_page).to have_modal_container
  #end

  Quando('clico no botão em Voltar')do 
    @transfer_page.button_voltar
  end


  Então('devo voltar para página home') do
    @home_page = Pages::Home.new
    expect(@home_page).to have_home_buttons
  end


  Então('devo ver uma mensagem de conta inválida') do
    expect(@transfer_page).to have_invalid_transfer
  end