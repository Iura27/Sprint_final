#language: pt

@regression
@pdt
Funcionalidade: Transferência de Fundos
  COMO usuário do site da BugBank 
  QUERO poder realizar transferência para outras contas
  PARA poder transferir valores

  Contexto: Estar na página de transferências
    Dado que esteja na página de transferência

  @transfer_pdt
  Cenário: Realizar uma Transferência de Fundos
    Quando insiro o todos os dados corretos requeridos na operação
    E clico em 'Transferir agora'
    Então devo ver uma mensagem de confirmação de sucesso


  @transfer_to_home
  Cenário: Voltar para home
    Quando clico no botão de Voltar
    Então devo ser redirecionado para home
  
