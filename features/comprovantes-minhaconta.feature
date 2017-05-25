#language:pt

Funcionalidade: Como usuário Cielo LIO, gostaria de validar as funcionalidades da Caixa de Mensagem.

@blink
Cenário: COMPROVANTES-MINHACONTA-0001 - Validação simples tela Comprovante
Dado que eu esteja em Minha Conta  
Quando clicar na opção Comprovantes
Então é exibido a tela Comprovantes 

@blink
Cenário: COMPROVANTES-MINHACONTA-0002 - Validação completa tela Comprovante 
Dado que eu esteja em Minha Conta  
Quando clicar na opção Comprovantes
Então é exibido a tela Comprovantes 
E opções Voltar e Filtro
E abas Detalhado (selecionada) e Lista
E lista com últimos comprovantes

@blink
Cenário: COMPROVANTES-MINHACONTA-0003
Dado  o usuário esteja na tela de comprovantes

Quando  o usuário clicar na opção de filtro

Então  é exibido a tela de filtros
E filtro por data
E filtro por range de valor
E filtro de forma de pagamento
E status

Cenário: COMPROVANTES-MINHACONTA-0004
Dado  o usuário esteja na tela de comprovantes

Quando  o usuário clicar na aba de lista

Então  é exibido todos os comprovantes em formato de lista
E bandeira
E forma de pagamento
E status
E data e hora 
E valor



Cenário: COMPROVANTES-MINHACONTA-0005
Dado  o usuário esteja na tela de comprovantes

Quando  o usuário clicar na aba detalhado

Então  é exibido todos os comprovantes em formato de timeline
E data e hora 
E comprovante



Cenário: COMPROVANTES-MINHACONTA-0006
Dado  que não tenha nenhuma venda realizada

Quando  o usuário clicar na label de comprovantes

Então  é exibido a mensagem de não há relatórios



Cenário: COMPROVANTES-MINHACONTA-0007
Dado  o usuário esteja na tela de comprovantes

Quando  o usuário clicar em cima de um comprovantes

Então  é exibido as opções Enviar via do estabelecimento
E enviar via cliente
E enviar todas as vias
E cancelar a venda

Cenário: COMPROVANTES-MINHACONTA-0008
Dado  o usuário clique em cima de um comprovantes

Quando  o usuário escolher a opção de enviar  via do estabelecimento

Então  a tela de enviar comprovante é exibida 
E botão de cancelar 
E botão de enviar 
