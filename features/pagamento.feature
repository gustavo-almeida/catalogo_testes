#language:pt

Funcionalidade: Como usuário Cielo LIO, gostaria de validar as funcionalidades de Pagamento.

@blink
Cenário: PAGAMENTO-0001 - Validar tela de escolha de forma de pagamento
Dado que eu esteja na tela inicial da Cielo LIO
Quando eu entrar pelo teclado virtual com o valor "R$10,15"
E tocar em 'Pagar R$10,15'
Então a tela com as formas de pagamento deve ser exibida

@non_blink #Nenhuma LIO configurada com essas pré-condições
Cenário: PAGAMENTO-0002 - Validar pagamento com Cielo Mobile sem versão mínima pré configurada
Dado que a Cielo LIO contenha uma versão do Cielo Mobile que não atenda a uma versão mínima pré-configurada 
Quando eu entrar pelo teclado virtual com o valor "R$10,00"
E tocar em 'Pagar R$10,00'
Então um modal de erro com a mensagem "Seu método de pagamento está desatualizado. Atualize a sua Lio." 
E o módulo de atualização da AppStore é invocado automaticamente para verificação de atualizações de Apps disponíveis

@blink
Cenário: PAGAMENTO-0003 - Validar inclusão de valor no carrinho
Dado que eu esteja na tela inicial da Cielo LIO
Quando eu entrar pelo teclado virtual com o valor "R$100,00"
E tocar na função Enter
E clicar no carrinho
Então sou redirecionado para a tela de pedido com status 'INICIADO' e opção 'LIMPAR'

@blink   
Cenário: PAGAMENTO-0004 - Limpar pedido iniciado
Dado que eu esteja na tela inicial da Cielo LIO
Quando eu entrar pelo teclado virtual com o valor "R$100,00"
E tocar na função Enter
E clicar no carrinho
E clicar na opção 'LIMPAR'
Então um modal com a mensagem "Deseja limpar o carrinho?" é exibido
E com opções CANCELAR e CONFIRMAR
Quando selecionar a opção CONFIRMAR
Então sou redirecionado para a tela inicial com o pedido iniciado removido
E o carrinho tem o círculo vermelho removido

@blink  
Cenário: PAGAMENTO-0005 - Validar pedido com status "Em pagamento"
Dado que eu esteja na tela de carrinho com um pedido de 'R$100,00' iniciado
Quando eu clicar em Pagar
E entrar pelo teclado virtual com o valor "R$50,00"
E clicar em Pagar
Então a tela com as formas de pagamento deve ser exibida
Quando avançar com o pagamento com opções: "CRÉDITO", "A VISTA" e "POSTO ABC"
E entrar com dados do cartão
| numero_do_cartao    | 4406910000038  |
| validade            | 11/22          |
E clicar em Confirmar
E prosseguir sem assinar
E clicar em Finalizar na tela de exibição do comprovante
E clicar em 'Sim' para envio de comprovante por email
E editar campo Digite o email com 'taiana.moreira@m4u.com.br' 
E clicar em 'Enviar'
Então a mensagem "Email enviado com sucesso" deve ser exibida 
E sou redirecionado para o carrinho
E o status do pedido é exibido como "EM PAGAMENTO" e opção 'PAGO'

@blink  
Cenário: PAGAMENTO-0006 - Pedido com pagamento parcial
Dado que eu esteja na tela de carrinho com um pedido de 'R$100,00' iniciado
Quando eu clicar em Pagar
E entrar pelo teclado virtual com o valor "R$50,00"
E clicar em Pagar
Então a tela com as formas de pagamento deve ser exibida
Quando avançar com o pagamento com opções: "CRÉDITO", "A VISTA" e "POSTO ABC"
E entrar com dados do cartão
| numero_do_cartao    | 4406910000038  |
| validade            | 11/22          |
E clicar em Confirmar
E prosseguir sem assinar
E clicar em Finalizar na tela de exibição do comprovante
E clicar em 'Não' para envio de comprovante por email
Então sou redirecionado para o carrinho
E com valor pago e restante a pagar atualizados com 'R$50,00' cada

@blink
Cenário: PAGAMENTO-0007 - Pagamento direto
Dado que eu esteja na tela inicial da Cielo LIO
Quando eu entrar pelo teclado virtual com o valor "R$50,00"
E avançar com o pagamento com opções: "CRÉDITO", "A VISTA" e "POSTO ABC"
E entrar com dados do cartão
| numero_do_cartao    | 4406910000038  |
| validade            | 11/22          |
E clicar em Confirmar
E prosseguir sem assinar
E clicar em Finalizar na tela de exibição do comprovante
E clicar em 'Sim' para envio de comprovante por email
E editar campo Digite o email com 'taiana.moreira@m4u.com.br' 
E clicar em 'Enviar'
Então a mensagem "Email enviado com sucesso" deve ser exibida 
E sou redirecionado para a tela inicial

@blink
Cenário: PAGAMENTO-0008 - Pagamento parcelamento loja
Dado que eu esteja na tela inicial da Cielo LIO
Quando eu entrar pelo teclado virtual com o valor "R$500,00"
E avançar com o pagamento com opções: "CRÉDITO", "PARC. LOJA" e "POSTO ABC"
E entrar com dados do cartão
| numero_de_parcelas        | 02                |
| numero_do_cartao          | 4406910000038     |
| validade                  | 11/22             |
E clicar em Confirmar
E prosseguir sem assinar
E clicar em Finalizar na tela de exibição do comprovante
E clicar em 'Sim' para envio de comprovante por email
E editar campo Digite o email com 'taiana.moreira@m4u.com.br' 
E clicar em 'Enviar'
Então a mensagem "Email enviado com sucesso" deve ser exibida 
E sou redirecionado para a tela inicial

@non_blink #função crediário não é exibida para todas as LIOs
Cenário: PAGAMENTO-0009 - Pagamento por Crediário
Dado que eu esteja na tela inicial da Cielo LIO
Quando eu entrar pelo teclado virtual com o valor "R$800,00"
E avançar com o pagamento com opções: "CREDIÁRIO", "VENDA" e "POSTO ABC"
E entrar com dados do cartão
| numero_de_parcelas        | 02                |
| numero_do_cartao          | 4406910000038     |
| validade                  | 11/22             |
| valor_de_entrada          | 100,00            |
| valor_primeira_parcela    | 200,00            |
| data_primeira_parcela     | <data atual>      |
E clicar em Confirmar
E prosseguir sem assinar
E clicar em Finalizar na tela de exibição do comprovante
E clicar em 'Sim' para envio de comprovante por email
E editar campo Digite o email com 'taiana.moreira@m4u.com.br' 
E clicar em 'Enviar'
Então a mensagem "Email enviado com sucesso" deve ser exibida 
E sou redirecionado para a tela inicial