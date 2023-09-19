# language: pt

@regression
@login
Funcionalidade: Login
    COMO usuário do site da BugBank 
    QUERO poder realizar o login na minha conta
    PARA poder efetuar os processos desejados no site

    Contexto: Estar na página de login
        Dado que esteja na página de login

    @login_go
    Cenário: Carregar Pagina de login
        Então deverá mostar logo
        E clicar em Registrar

    @do_login
    Cenário: Fazer login
        Quando faço meu registro primeiro inserindo os dados nos inputs
        E depois faço login inserindo os dados nos inputs
        Então deverá mostrar a home

    @invalid_login
    Cenário: Login inválido
        Quando faço meu login com uma senha ou email diferente do cadastrado
        Então deverá ser exibida uma mensagem de usuário ou senha inválido
    