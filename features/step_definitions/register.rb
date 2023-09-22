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

Quando('eu deixo os campos de cadastro em branco') do
  @register_page.blank_register
end

Quando('clico em Registrar') do
  @register_page.cadastrar_button.click
end


Então('devo ver uma mensagem de senhas não iguais') do
  expect(@register_page).to have_container_invalid
end

Então('devo ver mensagens de erro informando que os campos são obrigatórios') do
  expect(@register_page).to have_campo_obrigatorio
end