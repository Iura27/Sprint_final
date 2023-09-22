# language: pt

@regression
@login
Funcionalidade: Login
    COMO usuário do site da BugBank 
    QUERO poder realizar o login na minha conta
    PARA poder efetuar os processos desejados no site

    Contexto: Estar na página de login
        Dado que esteja na página de login

    @grupo1
    @do-login
    Cenário: Fazer login
        Quando faço meu registro primeiro inserindo os dados nos inputs
        E faço login inserindo os dados cadastrados nos inputs
        Então deverá mostrar a home
   
    @grupo1
    @invalid_login
    Cenário: Login inválido
        Quando faço meu registro primeiro inserindo os dados nos inputs
        E faço meu login com uma senha diferente da senha cadastrada
        Então deverá ser exibida uma mensagem de usuário ou senha inválido
    