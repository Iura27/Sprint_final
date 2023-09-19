#lenguage: pt

@regression
@home
Funcionalidade: Home
  COMO o usuário do site BugBank
  QUERO poder escolher as operações disponiveis no site
  PARA poder efetuar estas operações 

  Contexto: Estar na home
    Dado que esteja na home 
    
    @select_an_operation
    Cenário: Selecionar uma operação disponível
        Quando selecionar uma opereção disponível
        Então devera ser redirecionado para página da operação

    @select_diferent_operation
    Esquema do Cenário: Realizar uma operação disponivel
        Quando selecionar a "<operação>"
        Então dever ser redirecionado para página da operação

        Exemplos:
        |     operação   |
        | transferência  |
        | extrato        |
    
