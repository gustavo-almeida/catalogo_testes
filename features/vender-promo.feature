#language:pt

Funcionalidade: Como usuário Cielo LIO, gostaria de utilizar a extensão PROMO

@blink
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
E a mensagem "NÃO HÁ PREMIAÇÃO CONSULTE REGULAMENTO" deve ser exibida
E voltar para a tela inicial

@blink
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
E a mensagem "NÃO HÁ PREMIAÇÃO CONSULTE REGULAMENTO" deve ser exibida
E voltar para a tela inicial

@blink
Cenário: VENDER-PROMO-0003 - Não há resgate financeiro R$10.100,08
Dado que eu esteja na tela inicial da Cielo LIO
Quando eu entrar pelo teclado virtual com o valor "1001008"
E avançar com a compra com opções: "CRÉDITO", "A VISTA" e "POSTO ABC"
E entrar com dados do cartão
| numero        | validade | cod |
| 4406910000038 | 11/22    | 126 |
Então um beep deve soar 
E uma mensagem deve ser exibida por 5 segundos "NÃO HÁ RESGATE FINANCEIRO"   
E o comprovante deve ser exibido
Quando eu clicar em Finalizar
E clicar em 'Sim' para envio de comprovante por email
E editar campo Digite o email com 'taiana.moreira@m4u.com.br' 
E clicar em 'Enviar'
Então a mensagem "Email enviado com sucesso" deve ser exibida 
E a mensagem "NÃO HÁ PREMIAÇÃO CONSULTE REGULAMENTO" deve ser exibida
E voltar para a tela inicial

@non_blink #cenário exige troco, e sem pinpad/posto ABC não há essa opção.
Cenário: VENDER-PROMO-0004 - Desconto Instantâneo Débito com troco R$10.000,20
Dado que eu esteja na tela inicial da Cielo LIO
Quando eu entrar pelo teclado virtual com o valor "1000020"
E avançar com a compra com opções: "DÉBITO", "A VISTA" e "POSTO ABC"
E entrar com dados do cartão
| numero        | validade | cod |
| 4406910000038 | 11/22    | 126 |
E entrar com troco de 'R$10,00'
Então um beep deve soar 
E uma mensagem deve ser exibida por 5 segundos     
"""
    Cielo Promo

    Valor original
    R$ 10.010,20
    Desconto
  - R$ 5,00

    Valor final
    R$ 10.005,20
"""
E o comprovante deve ser exibido
Quando eu clicar em Finalizar
E clicar em 'Sim' para envio de comprovante por email
E editar campo Digite o email com 'taiana.moreira@m4u.com.br' 
E clicar em 'Enviar'
Então a mensagem "Email enviado com sucesso" deve ser exibida 
E a mensagem "NÃO HÁ PREMIAÇÃO CONSULTE REGULAMENTO" deve ser exibida
E voltar para a tela inicial

@blink
Cenário: VENDER-PROMO-0005 - Resgate Monetário sem envio de Comprovante R$10.010,14
Dado que eu esteja na tela inicial da Cielo LIO
Quando eu entrar pelo teclado virtual com o valor "1001014"
E avançar com a compra com opções: "CRÉDITO", "A VISTA" e "POSTO ABC"
E entrar com dados do cartão
| numero        | validade | cod |
| 4406910000038 | 11/22    | 126 |
Então um beep deve soar 
E uma mensagem deve ser exibida por 5 segundos     
"""
    Cielo Promo

    Valor original
    R$ 10.010,14  
    Desconto
  - R$ 5,00

    Valor final
    R$ 10.005,14
"""
E o comprovante deve ser exibido
Quando eu clicar em Finalizar
E clicar em 'Não' para envio de comprovante por email
E a mensagem "NÃO HÁ PREMIAÇÃO CONSULTE REGULAMENTO" deve ser exibida
E voltar para a tela inicial

@blink
Cenário: VENDER-PROMO-0006 - Validar mensagem "não há premiação" sem envio de comprovante R$10.100,01
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
E clicar em 'Não' para envio de comprovante por email
E a mensagem "NÃO HÁ PREMIAÇÃO CONSULTE REGULAMENTO" deve ser exibida
E voltar para a tela inicial