# language: pt

@regression
@home
Funcionalidade: Estar na Home
  COMO o usuário do site BugBank
  QUERO poder escolher as operações disponíveis no site
  PARA poder efetuar essas operações

  Contexto: Estar na home
    Dado que esteja na página de home 

  @select_transfer
  Cenário: Selecionar operação 'TRASNFERÊNCIA'
    Quando seleciono o botão da operação de transferência
    Então devo ser redirecionado para a página de transferências


  @select_extrato
  Cenário: Selecionar operação 'EXTRATO'
    Quando seleciono o botão da operação de extrato
    Então devo ser redirecionado para a página de visualização de extrato
 
  @logout
  Cenario: Deslogar do site
    Quando eu clico no botão de Sair
    Então devo ser redirecionado para página de login
