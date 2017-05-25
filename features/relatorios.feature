#language:pt

Funcionalidade: Como usuário Cielo LIO, gostaria de validar as funcionalidades de relatórios.

@blink
Cenário: MINHACONTA-RELATÓRIOS-0001 - Acessar Relatórios
Dado que eu esteja na tela Minha conta
Quando selecionar a opção Relatórios
Então a tela de relatórios é exibida com opção Voltar 
E opção Vendas de hoje
E opção Vendas por período
E opção Vendas por turno 

@blink
Cenário: RELATÓRIOS-VENDASDEHOJE-0002 - Acessar Vendas de hoje sem vendas no dia
Dado que não exista nenhuma venda no dia de hoje
E eu esteja na tela Relatórios
Quando eu clicar em Vendas de hoje
Então a tela de relatórios é exibida com a mensagem de "Não existem vendas"

@blink
Cenário: RELATÓRIOS-VENDASDEHOJE-0003 - Acessar Vendas de hoje com vendas no dia
Dado que eu tenha venda no dia de hoje
E eu esteja na tela Relatórios
Quando eu clicar em Vendas de hoje
Então a tela de relatórios é exibida com opção E-mail
E opções Detalhado e Lista

Cenário: RELATÓRIOS-VENDASDEHOJE-0004 - Acessar Vendas de hoje Detalhado
Dado que eu tenha venda no dia de hoje 
E que eu esteja na tela Vendas de hoje dos Relatórios
Quando eu clicar em Detalhado
Então a tela de relatórios deve ser exibida em formato de comprovante

Cenário: RELATÓRIOS-VENDASDEHOJE-0005
Dado  que eu esteja na tela vendas de hoje

Quando  o usuário clicar na opção de lista

Então  a tela de relatórios deve ser exibida com o filtro da data do dia
E somatório de vendas por bandeira 
E Totalizador de vendas 
E totalizador por valor
E no header o símbolo para enviar por e-mail 



Cenário: RELATÓRIOS-VENDASDEHOJE-0006
Dado  que eu esteja na tela vendas de hoje

Quando  o usuário clicar na opção de envio do e-mail 

Então  a tela enviar relatório deve ser exibida
E com e-mail já vem pré cadastrado 
E botão enviar 
E Botão cancelar 

Cenário: RELATÓRIOS-VENDASDEHOJE-0007
Dado  que eu esteja na tela vendas de hoje
E o usuário clicar na opção de envio do e-mail 

Quando  clicar em enviar 

Então deve aparecer a tela de enviando email
E e-mail enviando com sucesso

Cenário: RELATÓRIOS-VENDASPORPERIODO-0008
Dado  que não tenha nenhuma venda no dia de  hoje

Quando  o usuário clicar na opção de vendas por período

Então  a tela de relatórios  é exibida com a mensagem de “ Não existem vendas”

Cenário: RELATÓRIOS-VENDASPORPERIODO-0009
Dado  que eu tenha venda no dia de  hoje

Quando  o usuário clicar na opção de vendas por período

Então  a tela com filtros de data e hora é exibida com botão cancelar e Confirmar

Cenário: RELATÓRIOS-VENDASPORPERIODO-0010
Dado  que eu tenha vendas realizadas

Quando  o usuário clicar na opção de vendas por período
E selecionar uma data e hora
E clicar em confirmar

Então  a tela de relatório é exibida com as opções de detalhado e Lista


Cenário: RELATÓRIOS-VENDASPORPERIODO-0011
Dado  que eu esteja na tela de vendas por período

Quando  o usuário escolher a data e hora desejada

Então  a tela de relatórios deve ser exibida na opção detalhada em formato de comprovante

Cenário: RELATÓRIOS-VENDASPORPERIODO-0012
Dado  que eu esteja na  tela de vendas por período

Quando  o usuário clicar na opção de lista

Então  a tela de relatórios deve ser exibida com o filtro da data do selecionado
E somatório de vendas por bandeira 
E Totalizador de vendas 
E totalizador por valor
E no header o símbolo para enviar por e-mail 

Cenário: RELATÓRIOS-VENDASPORPERIODO-0013
Dado  que eu esteja na tela vendas por período

Quando  o usuário clicar na opção de envio do e-mail 

Então  a tela enviar relatório deve ser exibida
E com e-mail já vem pré cadastrado 
E botão enviar 
E Botão cancelar 

Cenário: RELATÓRIOS-VENDASPORPERIODO-0014
Dado  que eu esteja na tela vendas por período
E o usuário clicar na opção de envio do e-mail 

Quando  clicar em enviar 

Então deve aparecer a tela de enviando email
E e-mail enviando com sucesso


Cenário: RELATÓRIOS-VENDASPORTURNO-0015
Dado  que eu esteja no menu relatórios

Quando  o usuário clicar na opção de Vendas por turno

Então  a tela de Vendas por turno  é exibida 
E com label de Atual e Fechados
E com filtro de data até agora
E com a listagem de vendas 
E total de vendas
E botão Finalizar Turno 

Cenário: RELATÓRIOS-VENDASPORTURNO-0016
Dado  que eu esteja na tela vendas por turno

Quando  o usuário clicar na botão de finalizar por turno

Então  o modal é exibido com a mensagem de “ deseja fechar o turno referente ao período DD/MM/AAAA, HH:HH à DD/MM/AAAA, HH:HH 
E campo observação 
E botão Não
E Botão Sim

Cenário: RELATÓRIOS-VENDASPORTURNO-0017
Dado  que eu esteja na tela vendas por turno
E cliquei no botão de finalizar por turno

Quando  aparecer o modal 
E clicar em Não

Então  a tela de vendas por turno atual deve ser exibido

Cenário: RELATÓRIOS-VENDASPORTURNO-0018
Dado  que eu esteja na tela vendas por turno
E cliquei no botão de finalizar por turno

Quando  aparecer o modal 
E clicar em sim

Então deve aparecer a mensagem de “Fechamento de turno realizado com sucesso”.

Cenário: RELATÓRIOS-VENDASPORTURNO-0019
Dado  que eu esteja na tela vendas por turno

Quando o usuário clicar na label fechados

Então deve aparecer a listagem de Turnos fechados com observação
E Valor
E data do turno




Cenário: RELATÓRIOS-VENDASPORTURNO-0020
Dado  que eu esteja na tela vendas por turno

Quando o usuário clicar na label fechados

Então deve aparecer a listagem de Turnos fechados com observação
E Valor
E data do turno
