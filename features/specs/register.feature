#language: pt

@regression
@register
Funcionalidade: Cadastro de Usuário
    COMO usuário do site da BugBank 
    QUERO poder me cadastrar no site
    PARA poder utilizar os recursos do site

    Contexto: Estar na página de cadastro
        Dado que o card de Registrar esta visivel
   
    @grupo1
    @register_page
    Cenário: Cadastro com sucesso
        Quando insiro meus dados nos inputs corretos e me cadastro
        Então uma menssagem de sucesso deve ser exibida

    @grupo1
    @register_diferent_password
    Cenário: Cadastro com senhas diferentes nos inputs
        Quando eu insiro meus dados nos inputs com uma senha diferente no campo de confirmação de senha
        Então devo ver uma mensagem de senhas não iguais

    @register_blank
    Cenário: Cadastro com campos em branco
        Quando eu deixo os campos de cadastro em branco
        E clico em Registrar
        Então devo ver mensagens de erro informando que os campos são obrigatórios
