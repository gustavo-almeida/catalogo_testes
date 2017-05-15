#language:pt

Funcionalidade: Como usuário Cielo LIO, gostaria de utilizar a extensão PROMO

@blink
Cenário: VENDER-PROMO-0001 - Resgate Monetário R$10.100,01
Dado que eu esteja na tela inicial da Cielo LIO
Quando eu entrar pelo teclado virtual com o valor "1001001"
E avançar com a compra com opções: "CRÉDITO", "A VISTA" e "POSTO ABC"
E entrar com dados do cartão
| numero_do_cartao    | 4406910000038  |
| validade            | 11/22          |
| codigo_seguranca    | 126            |
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
E sou redirecionado para a tela inicial

@blink
Cenário: VENDER-PROMO-0002 - Resgate Monetário R$10.100,06
Dado que eu esteja na tela inicial da Cielo LIO
Quando eu entrar pelo teclado virtual com o valor "1001006"
E avançar com a compra com opções: "CRÉDITO", "A VISTA" e "POSTO ABC"
E entrar com dados do cartão
| numero_do_cartao    | 4406910000038  |
| validade            | 11/22          |
| codigo_seguranca    | 126            |
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
E sou redirecionado para a tela inicial

@blink
Cenário: VENDER-PROMO-0003 - Não há resgate financeiro R$10.100,08
Dado que eu esteja na tela inicial da Cielo LIO
Quando eu entrar pelo teclado virtual com o valor "1001008"
E avançar com a compra com opções: "CRÉDITO", "A VISTA" e "POSTO ABC"
E entrar com dados do cartão
| numero_do_cartao    | 4406910000038  |
| validade            | 11/22          |
| codigo_seguranca    | 126            |
Então um beep deve soar 
E uma mensagem deve ser exibida por 5 segundos "NÃO HÁ RESGATE FINANCEIRO"   
E o comprovante deve ser exibido
Quando eu clicar em Finalizar
E clicar em 'Sim' para envio de comprovante por email
E editar campo Digite o email com 'taiana.moreira@m4u.com.br' 
E clicar em 'Enviar'
Então a mensagem "Email enviado com sucesso" deve ser exibida 
E a mensagem "NÃO HÁ PREMIAÇÃO CONSULTE REGULAMENTO" deve ser exibida
E sou redirecionado para a tela inicial

@non_blink #Ao selecionar 'POSTO ABC' para testes no Blink, opção troco não é exibida.
Cenário: VENDER-PROMO-0004 - Desconto Instantâneo Débito com troco R$10.000,20
Dado que eu esteja na tela inicial da Cielo LIO
Quando eu entrar pelo teclado virtual com o valor "1000020"
E avançar com a compra com opções: "DÉBITO", "A VISTA" e "LOJA ON"
E entrar com dados do cartão
| numero_do_cartao    | 4406910000038  |
| validade            | 11/22          |
| codigo_seguranca    | 126            |
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
E sou redirecionado para a tela inicial

@blink
Cenário: VENDER-PROMO-0005 - Resgate Monetário sem envio de Comprovante R$10.010,14
Dado que eu esteja na tela inicial da Cielo LIO
Quando eu entrar pelo teclado virtual com o valor "1001014"
E avançar com a compra com opções: "CRÉDITO", "A VISTA" e "POSTO ABC"
E entrar com dados do cartão
| numero_do_cartao    | 4406910000038  |
| validade            | 11/22          |
| codigo_seguranca    | 126            |
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
E sou redirecionado para a tela inicial

@blink
Cenário: VENDER-PROMO-0006 - Validar mensagem "não há premiação" sem envio de comprovante R$10.100,01
Dado que eu esteja na tela inicial da Cielo LIO
Quando eu entrar pelo teclado virtual com o valor "1001001"
E avançar com a compra com opções: "CRÉDITO", "A VISTA" e "POSTO ABC"
E entrar com dados do cartão
| numero_do_cartao    | 4406910000038  |
| validade            | 11/22          |
| codigo_seguranca    | 126            |
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
E sou redirecionado para a tela inicial

@blink
Cenário: VENDER-PROMO-0007 - Transação Financeira NEGADA R$10.010,07
Dado que eu esteja na tela inicial da Cielo LIO
Quando eu entrar pelo teclado virtual com o valor "1001007"
E avançar com a compra com opções: "CRÉDITO", "A VISTA" e "POSTO ABC"
E entrar com dados do cartão
| numero_do_cartao    | 4406910000038  |
| validade            | 11/22          |
| codigo_seguranca    | 126            |
Então um beep deve soar 
E uma mensagem deve ser exibida por 5 segundos "NEGADA"   
E a tela de Resgate de Prêmios com as opções 'Não' e 'Sim' deve ser exibida
Quando eu clicar no botão 'Sim'
E selecionar a opção 'E-CUPOM 1' na lista de cupons exibida
E entrar com '1' na página de seleção de quantidade de cupons
E clicar em Confirmar
Então deve aparecer uma mensagem "Resgate Efetuado! Entregue o prêmio."
E sou redirecionado para a tela inicial

@blink
Cenário: VENDER-PROMO-0008 - Cancelar quando apenas um E-CUPOM disponível R$10.010,03
Dado que eu esteja na tela inicial da Cielo LIO
Quando eu entrar pelo teclado virtual com o valor "1001003"
E avançar com a compra com opções: "CRÉDITO", "A VISTA" e "POSTO ABC"
E entrar com dados do cartão
| numero_do_cartao    | 4406910000038  |
| validade            | 11/22          |
| codigo_seguranca    | 126            |
Então o comprovante deve ser exibido
Quando eu clicar em Finalizar
E clicar em 'Não' para envio de comprovante por email
E eu clicar em 'Sim' na tela de Resgate de Prêmios
E entrar com '1' na página de seleção de quantidade de cupons
E aciono o botão Cancelar
Então a mensagem "Resgate não efetuado" deve ser exibida
E sou redirecionado para a tela inicial
