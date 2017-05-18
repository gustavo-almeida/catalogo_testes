#language:pt

Funcionalidade: Como usuário Cielo LIO, gostaria de validar as funcionalidades da calculadora.

Cenário: CALCULADORA-0001 - Validar Tela Vazia
Dado que eu esteja na tela inicial da Cielo LIO
Quando eu clicar na função Calculadora
E clicar no botão Fechar 
Então volto para a tela inicial com o display zerado

Cenário: CALCULADORA-0002 - Validar Display
Dado que o usuário clica na label da Calculadora e entra com a sequência de entradas: 5,0  
Quando o usuário clicar no botão Check 
Então a calculadora fecha e volta para a IDE principal com o display preenchido no valor digitado R$50,00. 

Cenário: CALCULADORA-0003 -Validar somatório de valores
Dado que o usuário clique na operação SOMA e em seguida entra com a sequência de entrada: 2,0
Quando o usuário clicar no botão Check 
Então a calculadora faz o somatório e volta para a IDE principal com o display preenchido com o valor de R$70,00.

Cenário: CALCULADORA-0004 -Validar subtração de valores
Dado que o usuário clique na Calculadora e em seguida na operação Subtrair e digite a sequência de entrada: 3,5
Quando o usuário clique no botão Check
Então a calculadora faz a operação de subtrair e volta para a IDE principal com o display preenchido com o valor de R$35,00  

Cenário: CALCULADORA-0005 -Validar multiplicação de valores
Dado que o usuário clique na Calculadora e em seguida na operação de Multiplicação selecionando o número 3
Quando o usuário clique no botão Check 
Então a calculadora faz a operação de Multiplicar e volta para a IDE principal com o display preenchido com o valor de R$105,00  

Cenário: CALCULADORA-0006 -Validar divisão de valores
Dado que o usuário clique na Calculadora e em seguida na operação de Divisão selecionando o número 4
Quando o usuário clique no botão Check 
Então a calculadora faz a operação de Dividir e volta para a IDE principal com o display preenchido com o valor de R$26,25

Cenário: CALCULADORA-0007 -Validar porcentagem
Dado que o usuário clique na Calculadora e em seguida na operação de Multiplicação e  selecione o número 1,0
Quando o usuário clique no botão de Porcentagem e em seguida em Check 
Então a calculadora faz a operação de Porcentagem e volta para a IDE principal com o display preenchido com o valor de R$2,62

Cenário: CALCULADORA-0008 -Validar botão Del
Dado que o usuário clique na Calculadora e em seguida entre com a sequência de entrada 5, 0, 8
Quando o usuário clique no botão DEL uma vez
Então a calculadora exibe no display o valor de 50

Cenário: CALCULADORA-0009 -Validar botão CLR
Dado que o usuário clique na Calculadora 
Quando o usuário clique no sinal de Igual (=)
Então a calculadora exibe o botão CLR
