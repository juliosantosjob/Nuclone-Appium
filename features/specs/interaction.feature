#language:pt 

  Funcionalidade: Interação com o app
  - Eu como usuário devo poder interagir com o app nuclone
  
    @myBalance
    Cenario: Verificação de saldo
      Dado que o usuário acesse o app
      Quando ele clicar na viuslização de saldo
      Então ele visualiza o seu saldo "R$ 5.500,00"