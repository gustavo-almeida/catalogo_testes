#language:pt

Funcionalidade: Como usuário Cielo LIO, gostaria de validar as funcionalidades da calculadora.

Cenário: CALCULADORA-0001 - Validar Tela Vazia
Dado que eu esteja na tela inicial da Cielo LIO
Quando eu clicar na função Calculadora
E clicar no botão Fechar 
Então sou redirecionado para a tela inicial 
E o display é exibido com valor 'R$0,00'

Cenário: CALCULADORA-0002 - Validar Display
Dado que eu esteja na tela inicial da Cielo LIO
Quando eu clicar na função Calculadora
E entrar com o valor pelo teclado da calculadora '50'
E clicar no botão Check
Então sou redirecionado para a tela inicial
E o display é exibido com valor 'R$50,00'

Cenário: CALCULADORA-0003 - Validar somatório de valores
Dado que eu esteja na tela inicial da Cielo LIO
E com valor 'R$50,00' sendo exibido no display
Quando eu clicar na função Calculadora
E clicar na operação Soma
E entrar com o valor pelo teclado da calculadora '20'
E clicar no botão Check
Então sou redirecionado para a tela inicial
E o display é exibido com valor 'R$70,00'

Cenário: CALCULADORA-0004 - Validar subtração de valores
Dado que eu esteja na tela inicial da Cielo LIO
E com valor 'R$70,00' sendo exibido no display
Quando eu clicar na função Calculadora
E clicar na operação Subtração
E entrar com o valor pelo teclado da calculadora '35'
E clicar no botão Check
Então sou redirecionado para a tela inicial
E o display é exibido com valor 'R$35,00' 

Cenário: CALCULADORA-0005 - Validar multiplicação de valores
Dado que eu esteja na tela inicial da Cielo LIO
E com valor 'R$35,00' sendo exibido no display
Quando eu clicar na função Calculadora
E clicar na operação Multiplicação
E entrar com o valor pelo teclado da calculadora '3'
E clicar no botão Check
Então sou redirecionado para a tela inicial
E o display é exibido com valor 'R$105,00'

Cenário: CALCULADORA-0006 - Validar divisão de valores
Dado que eu esteja na tela inicial da Cielo LIO
E com valor 'R$105,00' sendo exibido no display
Quando eu clicar na função Calculadora
E clicar na operação Divisão
E entrar com o valor pelo teclado da calculadora '4'
E clicar no botão Check
Então sou redirecionado para a tela inicial
E o display é exibido com valor 'R$26,25'

Cenário: CALCULADORA-0007 - Validar porcentagem
Dado que eu esteja na tela inicial da Cielo LIO
E com valor 'R$26,25' sendo exibido no display
Quando eu clicar na função Calculadora
E clicar na operação Multiplicação
E entrar com o valor pelo teclado da calculadora '10'
E clicar na operação Porcentagem
E clicar no botão Check
Então sou redirecionado para a tela inicial
E o display é exibido com valor 'R$2,62'

Cenário: CALCULADORA-0008 - Validar botão Del
Dado que eu esteja na tela inicial da Cielo LIO
Quando eu clicar na função Calculadora
E entrar com o valor pelo teclado da calculadora '508'
E clicar na operação DEL
E clicar no botão Check
Então sou redirecionado para a tela inicial
E o display é exibido com valor 'R$50,00'

Cenário: CALCULADORA-0009 - Validar botão CLR
Dado que eu esteja na tela inicial da Cielo LIO
E com valor 'R$50,00' sendo exibido no display
Quando eu clicar na função Calculadora
E clicar no sinal de igualdade
Então no lugar da função DEL será exibido a função CLR