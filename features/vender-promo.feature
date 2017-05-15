#language:pt

Funcionalidade: Como usuário Cielo LIO, gostaria de utilizar a extensão PROMO

Cenário: VENDER-PROMO-0001 - Resgate Monetário R$10.100,01
Dado que eu esteja na tela inicial da Cielo LIO
Quando eu entrar pelo teclado virtual com o valor "1001001"
E avançar com a compra com opções: "CRÉDITO", "A VISTA" e "POSTO ABC"
E entrar com dados do cartão
| numero        | validade | cod |
| 4406910000038 | 11/22    | 126 |
Então um beep deve soar 
E uma mensagem deve ser exibida por 5 segundos     
"""
  Cielo Promo
  
  Valor original
  R$ 10.010,01  
  Desconto
- R$ 5,00
  
  Valor final
  R$ 10.005,01
"""
E o comprovante deve ser exibido
Quando eu clicar em Finalizar
E clicar em 'Sim' para envio de comprovante por email
E editar campo Digite o email com 'taiana.moreira@m4u.com.br' 
E clicar em 'Enviar'
Então a mensagem "Email enviado com sucesso" deve ser exibida 
E a mensagem 'NÃO HÁ PREMIAÇÃO CONSULTE REGULAMENTO' deve ser exibida
E voltar para a tela inicial


Cenário: VENDER-PROMO-0002 - Resgate Monetário R$10.100,06
Dado que eu esteja na tela inicial da Cielo LIO
Quando eu entrar pelo teclado virtual com o valor "1001006"
E avançar com a compra com opções: "CRÉDITO", "A VISTA" e "POSTO ABC"
E entrar com dados do cartão
| numero        | validade | cod |
| 4406910000038 | 11/22    | 126 |
Então um beep deve soar 
E uma mensagem deve ser exibida por 5 segundos     
"""
  Cielo Promo
  
  Valor original
  R$ 10.010,06  
  Desconto
- R$ 5,00
  
  Valor final
  R$ 10.005,06
"""
E o comprovante deve ser exibido
Quando eu clicar em Finalizar
E clicar em 'Sim' para envio de comprovante por email
E editar campo Digite o email com 'taiana.moreira@m4u.com.br' 
E clicar em 'Enviar'
Então a mensagem "Email enviado com sucesso" deve ser exibida 
E a mensagem 'NÃO HÁ PREMIAÇÃO CONSULTE REGULAMENTO' deve ser exibida
E voltar para a tela inicial