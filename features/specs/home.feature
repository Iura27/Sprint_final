# language: pt

@regression
@home
Funcionalidade: Estar na Home
  COMO o usuário do site BugBank
  QUERO poder escolher as operações disponíveis no site
  PARA poder efetuar essas operações

  Contexto: Estar na home
    Dado que esteja na home

  @select_transfer
  Cenário: Selecionar operação 'TRASNFERÊNCIA'
    Quando seleciono o botão da operação de transferência
    Então devo ser redirecionado para a página de transferências


  @select_extrato
  Cenário: Selecionar operação 'EXTRATO'
    Quando seleciono o botão da operação de extrato
    Então devo ser redirecionado para a página de visualização de extrato
 
  
  @select_existing_operation
  Cenário: Selecionar uma operação disponível
    Quando seleciono a "<operação>"
    Então devo ser redirecionado para a página da operação

    Exemplos:
      | operação       |
      | transferência  |
      | extrato        |
