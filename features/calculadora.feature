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
Dado que o usuário clique na Calculadora e em seguida na operação de Multiplicação e  selecione o número 1,0
Quando o usuário clique no botão de Porcentagem e em seguida em Check 
Então a calculadora faz a operação de Porcentagem e volta para a IDE principal com o display preenchido com o valor de R$2,62

Cenário: CALCULADORA-0008 - Validar botão Del
Dado que o usuário clique na Calculadora e em seguida entre com a sequência de entrada 5, 0, 8
Quando o usuário clique no botão DEL uma vez
Então a calculadora exibe no display o valor de 50

Cenário: CALCULADORA-0009 - Validar botão CLR
Dado que o usuário clique na Calculadora 
Quando o usuário clique no sinal de Igual (=)
Então a calculadora exibe o botão CLR
