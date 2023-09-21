Dado('que o card de Registrar esta visivel') do
  @register_page = Pages::Register.new
  @register_page.load
  @register_page.register_go
  expect(@register_page).to have_card
end

Quando('insiro meus dados nos inputs corretos e me cadastro') do
  @register_page.preencher_form
end


Então('uma menssagem de sucesso deve ser exibida') do
  expect(@register_page).to have_close_modal_link
end


Quando('eu insiro meus dados nos inputs com uma senha diferente no campo de confirmação de senha') do
  @register_page.form_invalid_password
end


Então('devo ver uma mensagem de senhas não iguais') do
  expect(@register_page).to have_container_invalid
end