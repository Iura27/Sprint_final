Dado('que esteja na página de login') do
    @login_page = Pages::Login.new
    @login_page.load
    @login_page.register_go
    expect(@login_page).to have_card
  end

Quando('faço meu registro primeiro inserindo os dados nos inputs') do
    @login_page.preencher_form
end

Quando('faço login inserindo os dados cadastrados nos inputs') do
    @login_page.form_login
end

Quando('faço meu login com uma senha diferente da senha cadastrada') do
    @login_page.login_invalid
  end

Então('deverá mostrar a home') do
    @home_page = Pages::Home.new
    expect(@home_page).to have_home_buttons
end


Então('deverá ser exibida uma mensagem de usuário ou senha inválido') do
    expect(@login_page).to have_invalid_login
  end