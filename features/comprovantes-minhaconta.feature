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
Cenário: COMPROVANTES-MINHACONTA-0003 - Exibir filtro de comprovantes
Dado eu esteja na tela Comprovantes
Quando clicar na opção de filtro
Então é exibido a tela de Filtro com opções Fechar e Confirmar
E opções de filtro por data
E opções de filtro por Range de valor
E opção de filtro por Nome do cliente
E opção de filtro por Status

@blink
Cenário: COMPROVANTES-MINHACONTA-0004 - Aba Lista em Comprovantes
Dado eu esteja na tela Comprovantes
Quando eu clicar na aba Lista
Então os comprovantes são exibidos em formato de lista
E bandeira do cartão
E forma de pagamento
E status do pedido
E data e hora
E valor do pedido

@blink
Cenário: COMPROVANTES-MINHACONTA-0005 - Aba Detalhado em Comprovantes 
Dado eu esteja na aba Lista da tela Comprovantes
Quando eu clicar na aba Lista Detalhado
Então os comprovantes são exibidos em formato de timeline

@non-blink
Cenário: COMPROVANTES-MINHACONTA-0006 - Acessar Comprovantes sem venda realizada
Dado que eu não tenha nenhuma venda realizada
Quando eu acessar a Tela Comprovantes
Então é exibido a mensagem de não há relatórios


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
