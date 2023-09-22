Dado('que estou na página de extrato') do
  @extrato_page = Pages::Extrato.new
  @extrato_page.load
  @extrato_page.enter_home
  operation_selected = Factory::Static.static_data('operation_extrato')
  @extrato_page.home_buttons.click_button_by_text(operation_selected) 
  end
  

  
  Então('devo ver todas as informações das minhas últimas movimentações') do
    expect(@extrato_page).to have_container_transactions
  end


  Quando('clico no botão de Voltar') do
    @extrato_page.button_voltar
  end


  Então('devo ser redirecionado para home') do
    @home_page = Pages::Home.new
    expect(@home_page).to have_home_buttons
  end