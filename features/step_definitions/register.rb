Dado('que o card de Registrar esta visivel') do
  @register_page = Pages::Register.new
  @register_page.load
  @register_page.register_go_page
  expect(@register_page).to have_card
end

Quando('insiro meus dados nos inputs corretos') do
  @register_page.preencher_form
end


Quando('clico no botão {string}') do |string|
  pending # Write code here that turns the phrase above into concrete actions
end


Então('uma menssagem de sucesso deve ser exibida') do
  pending # Write code here that turns the phrase above into concrete actions
end