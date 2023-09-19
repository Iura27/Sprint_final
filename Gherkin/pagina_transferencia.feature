#language: pt

Funcionalidade: Transferência de Fundos
  COMO usuário do site da BugBank 
  QUERO poder realizar transferência para outras contas
  PARA poder transferiri valores

  Contexto: Estar na página de transferências
    Dado que esteja na página de transferência

  Cenário: Realizar uma Transferência de Fundos
    Quando insiro o todos os dados corretos requeridos na operação
    E clico em 'Transferir agora'
    Então devo ver uma mensagem de confirmação de sucesso
  
