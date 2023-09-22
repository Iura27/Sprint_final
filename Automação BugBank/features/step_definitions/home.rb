Dado('que esteja na página de home') do
    @home_page = Pages::Home.new
    @home_page.load
    @home_page.enter_home
   
  end

  Quando('seleciono o botão da operação de transferência') do
    operation_selected = Factory::Static.static_data('operation_transfer')
    @home_page.home_buttons.click_button_by_text(operation_selected) 
  end
  
  Então('devo ser redirecionado para a página de transferências') do
    @transfer_page = Pages::Transfer.new
    expect(@transfer_page).to have_transfer_form
  end



  Quando('seleciono o botão da operação de extrato') do
    operation_selected = Factory::Static.static_data('operation_extrato')
    @home_page.home_buttons.click_button_by_text(operation_selected) 
  end
  
  Então('devo ser redirecionado para a página de visualização de extrato') do
    @extrato_page = Pages::Extrato.new
    expect(@extrato_page).to have_container_extrato
  end


  Quando('eu clico no botão de Sair') do
    @home_page.logout_site
  end

  Então('devo ser redirecionado para página de login') do
    @login_page = Pages::Login.new
    expect(@login_page).to have_card_login
  end
  