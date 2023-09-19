Dado('que esteja na página de login') do
    @login_page = Pages::Login.new
    @login_page.load
    @login_page.register_go
    expect(@login_page).to have_card
  end

Quando('faço meu registro primeiro inserindo os dados nos inputs') do
    @login_page.preencher_form
end

Quando('depois faço login inserindo os dados nos inputs') do
    @login_page.form_login
end

Então('deverá mostrar a home') do
    @home_page = Pages::Home.new
    expect(@home_page).to have_transfer_button
end