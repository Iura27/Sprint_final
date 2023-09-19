# language: pt

@regression 
@pde
Funcionalidade: Visualizar informações na página de extrato
  COMO um usuário do site BugBank
  QUERO visualizar meu saldo atual, minhas movimentações e meus saldos no dia das movimentações
  PARA acompanhar minhas finanças

  Contexto: Estar na página de extrato
    Dado que estou na página de extrato

  @extrato_view_pde
  Cenário: Visualizar saldo atual na página de extrato
    Quando eu estiver na página de extrato
    Então devo ver todas as informações das minhas últimas movimentações
