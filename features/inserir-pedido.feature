#language:pt

Funcionalidade: Como usuário Cielo LIO, gostaria de validar as funcionalidades de Inclução de pedidos.

@blink
Cenário: INSERIR-PEDIDO-0001 - Exibir modal de criar pedido
Dado que eu esteja na Tela de Pedidos
Quando eu selecionar opção Incluir (+) 
Então deve aparecer um modal Criar Novo Pedido

@blink
Cenário: INSERIR-PEDIDO-0002 - Validar tela de inclusão de pedido
Dado que eu esteja no modal Criar Novo Pedido
Quando informar o código do pedido 
E selecionar a Opção Continuar
Então deve aparecer a tela com código do pedido informado
E opção Voltar
E opções Tabs: Valor (selecionada) e Catálogo
E Teclado Numérico com funções: 'BCK', 'Qtd', 'Enter', 'Calculadora', 'Carrinho'
E opção "Liberar Pagamento" desabilitada
E TabBar: 'Vender' (selecionada), 'Minha Conta', 'Apps' e 'Ajuda'
E opções nativas do Android: 'Back', 'Home' e 'Apps'

@blink
Cenário: INSERIR-PEDIDO-0003 - Validar função Enter na inclusão de pedido
Dado que eu esteja na tela de inclusão de pedido
Quando eu informar o valor "R$ 2,50" 
E selecionar a função 'Enter'
Então o botão "Liberar Pagamento" é exibido habilitado com o valor informado 
E a função 'Carrinho' deve exibir um contador com o valor '1'

@blink
Cenário: INSERIR-PEDIDO-0004
Dado que eu esteja na tela de inclusão de pedido
E com o valor de "R$2,50" no carrinho
Quando informar o valor "R$4,00" 
E selecionar a função 'Enter'
Então o botão "Liberar Pagamento" é atualizado com o valor "R$6,50"
E a função 'Carrinho' deve exibir um contador com o valor '2'
Quando eu clicar no botão "Liberar Pagamento R$ 6,50" 
Então deve aparecer a Tela Tab com as opções: 'Valor', 'Catálogo' e 'Pedidos' (Selecionado)
E filtro com as opções 'Abertos' (selecionado) e 'Fechados'
E opção de Busca (ícone de Lupa)
E opção "Novo Pedido" (+)
E lista com o Pedido criado com status de "Em Pagamento"
E valor "R$6,50" e data da última atualização
E TabBar: 'Vender' (selecionada), 'Minha Conta', 'Apps' e 'Ajuda'
E opções nativas do Android: 'Back', 'Home' e 'Apps'

@blink
Cenário: PEDIDO-0005 - Validação de busca de pedidos
Dado que eu esteja na Tela de Pedidos
Quando selecionar filtro Fechados 
E clicar na Opção de Busca (ícone de Lupa) 
Então deve ser exibida uma caixa de texto com o Label "Pesquisar" e opção Voltar no lugar das opções anteriores 
E lista dos pedidos fechados pela LIO abaixo
Quando eu digitar na caixa de texto "Pesquisar" o nome de algum pedido recém criado
Então a lista de pedidos deve estar vazia apenas com mensagem "Nenhum resultado encontrado"
Quando eu clicar em Voltar 
E selecionar filtro de pedidos Abertos
E clicar na Opção de Busca (ícone de Lupa) 
E eu digitar na caixa de texto "Pesquisar" o nome de algum pedido recém criado
Então a lista de pedidos deve exibir o pedido recém criado
Quando eu clicar em Voltar
E selecionar filtro de pedidos Abertos
E clicar na Opção de Busca (ícone de Lupa)
E eu digitar na caixa de texto "Pesquisar" um caractere qualquer do nome do pedido recém criado
Então a lista de pedidos deve exibir o pedido recém criado dentre outros pedidos cujo nome também contenha o caractere digitado

@blink
Cenário: PEDIDO-0006 - Validar status do pedido
Dado que eu tenha um pedido em aberto com valores avulsos 'R$4,00' e 'R$2,50'
E eu esteja na tela de pedido com esse pedido listado
Quando eu clicar no pedido recém aberto
Então deve ser exibida uma tela de Fechamento de Pedido com nome do pedido e status "EM PAGAMENTO"
E opções Sair (X) e PAGO
E Tab com as opções: Conta (Selecionado) e Pagamentos
E Lista com 2 itens com quantidade 1, tipo "Valor Avulso" e valores "R$4,00" e "R$2,50" respectivamente.
E ao final da lista com a label "TOTAL" e o valor final do pedido "R$6,50"
E uma opção Pagar
E opções nativas do Android: 'Back', 'Home' e 'Apps'
Quando eu clicar em Sair (X)
Então deve ser exibida uma mensagem "Este pedido ainda não foi totalmente pago. Deseja realmente sair?" com as opções "CANCELAR" e "CONFIRMAR"
Quando eu clicar em "Confirmar"
Então a tela pedidos é exibida novamente com o último filtro de pesquisa utilizado
Quando eu clicar no pedido recém aberto
Então deve ser exibida a tela de Fechamento de Pedido com os dados de pedido inalterados
Quando eu clicar no botão PAGO
Então deve ser exibida uma mensagem "Faltam R$6,50. Deseja classificar como PAGO?" com as opções "CANCELAR" e "CONFIRMAR"
Quando eu clicar em Cancelar
Então tela de Fechamento de Pedido é exibida com os dados de pedido inalterados
Quando eu clicar no botão PAGO
E eu clicar em Confirmar
Então a tela pedidos é exibida com o último filtro de pesquisa utilizado 
E o pedido passa a ter o status "PAGO" e com o ícone de pedido marcado em verde

@blink
Cenário: PEDIDO-0007 - Validar marcar pedido como PAGO
Dado que eu tenha um pedido marcado como PAGO com valores avulsos 'R$4,00' e 'R$2,50'
E eu esteja na tela de pedidos com esse pedido listado após buscá-lo
Quando eu clicar no pedido marcado como pago
Então deve ser exibida uma tela de Fechamento de Pedido com nome do pedido e status "PAGO"
E opções Sair (X) e FECHAR
E Tab com as opções: Conta (Selecionado) e Pagamentos
E Lista com 2 itens com quantidade 1, tipo "Valor Avulso" e valores "R$4,00" e "R$2,50" respectivamente.
E ao final da lista com a label "TOTAL" e o valor final do pedido "R$6,50"
E uma opção Pagar
E opções nativas do Android: 'Back', 'Home' e 'Apps'
Quando eu clicar na tab Pagamentos
Então deve ser exibido o conteúdo da Tab Pagamentos
E lista sem itens com a mensagem "Não há pagamentos." 
E ao final da lista com a label "RESTA A PAGAR" e o valor final do pedido "R$6,50"
Quando eu clicar na opção FECHAR
Então deve ser exibida uma mensagem "Deseja realmente encerrar esta ordem?" com as opções "CANCELAR" e "CONFIRMAR"
Quando eu clicar em CANCELAR
Então deve ser exibida novamente a tela de Fechamento de Pedido na Tab "Pagamentos"
Quando  o usuário clicar em "FECHAR"
E eu clicar em CONFIRMAR
Então a tela pedidos é exibida novamente com o último filtro de pesquisa utilizado 
Mas o pedido não é mais exibido por não estar mais aberto
Quando eu limpar a busca e selecionar o filtro "Fechados"
Então a lista de pedidos é atualizada e o pedido recém fechado é listado

@blink
Cenário: PEDIDO-0008 - Validar Catálogo de pedido com múltiplos produtos 
Dado que eu esteja na tela de pedido 
E que exista um produto X cadastrado com valor "R$4,99" com categoria A
E que exista um produto Y cadastrado com valor "R$10,00" com categoria B
E que exista um produto Z cadastrado com valor "R$20,00" com categoria C
Quando eu criar um pedido
E selecionar a tab Catálogo
Então deve ser exibida uma tela de Pedido
E cabeçalho com a opção Voltar (seta) e nome do pedido 
E tab com as opções Valor e Catálogo (Selecionado)
E lista de Seleção com as Opções: Todos os itens (Selecionado), A, B e C 
E opção de Busca (ícone de Lupa)
E opção de Leitura por código de barras(ícone de barcode)
E botão de opções (...)
E lista com itens A, B e C separados por categoria, cada um com contador "0" e opções Aumentar e Diminuir (+ e -) 
E opções "Liberar Pagamento" e "Carrinho" desabilitadas
E TabBar Vender (Selecionada), Minha Conta, Apps e Ajuda
E opções nativas do Android: 'Back', 'Home' e 'Apps'

@blink
Cenário: PEDIDO-0009 - Filtrar categorias em Catálogo na tela de pedido
Dado que eu esteja na tela de pedido 
E que exista um produto X cadastrado com valor "R$4,99" com categoria A
E que exista um produto Y cadastrado com valor "R$10,00" com categoria B
E que exista um produto Z cadastrado com valor "R$20,00" com categoria C
Quando eu criar um pedido
E selecionar a tab Catálogo
E no filtro de categoria escolher o valor A
Então a lista de itens exibe apenas o item X e a lista de Seleção exibe o valor A
Quando eu escolher o valor C na lista de seleção de categoria
Então a lista de itens exibe apenas o item Z e a lista de Seleção exibe o valor C

@blink
Cenário: PEDIDO-0010 - Atualizar quantidade de produtos num pedido
Dado que eu esteja na tela de pedido 
E que exista um produto X cadastrado com valor "R$4,99" com categoria A
E que exista um produto Y cadastrado com valor "R$10,00" com categoria B
E que exista um produto Z cadastrado com valor "R$20,00" com categoria C
Quando eu selecionar a tab Catálogo
E clicar na opção de busca (lupa)
Então é exibido opção Voltar e uma caixa de texto com o label "Pesquisar..."
Quando eu realizar uma busca com o valor 'Y'
Então é listado o produto Y com quantidade '0' e botões para alterar quantidade (- e +)
Quando eu clicar '2' vezes em '+' e '1' vez em '-'
Então o contador é atualizado para '1', depois '2', depois '1' 
E o botão Liberar Pagamento tem o valor atualizado "R$10,00", depois "R$20,00", depois "R$10,00"
E o ícone do carrinho tem o contador com '1', '2', e '1' respectivamente
Quando eu realizar uma busca com valor 'Z'
Então é listado o produto Z com quantidade '0' e botões para alterar quantidade (- e +)
Quando eu clicar '5' vezes em '+' e '1' vez em '-'
Então o contador é atualizado de '1' a '5' e volte para '4'
E o botão Liberar Pagamento tem o valor atualizado de "R$30,00" a "R$110,00", e volta para "R$90,00" (passos de R$20,00)
E o ícone do carrinho tem o contador atualizado para '2'

@blink
Cenário: PEDIDO-0011 - Validar limpeza de carrinho na inclusão de pedido
Dado que eu esteja na tela de pedido 
E que exista um produto X cadastrado com valor "R$4,99" com categoria A
E que exista um produto Y cadastrado com valor "R$10,00" com categoria B
E que exista um produto Z cadastrado com valor "R$20,00" com categoria C
E esteja na página de pedido criado com '1' produto Y e '4' produtos Z incluídos no carrinho
Quando eu clicar na opção Carrinho
Então deve ser exibida uma tela de Detalhe de Pedido com nome do pedido e status "INICIADO"
E opções Sair (X) e LIMPAR
E Tab com as opções: Conta (Selecionado) e Pagamentos
E lista com item 'Y' com quantidade '1' e valor total "R$10,00" e item 'Z' com quantidade '4' e valor total "R$80,00"
E rodapé com a label "TOTAL" e o valor final do pedido "R$90,00"
E opções nativas do Android: 'Back', 'Home' e 'Apps'
Quando eu clicar em "LIMPAR"
Então deve ser exibida uma tela de confirmação "Deseja limpar carrinho?" com as opções "CANCELAR" e "CONFIRMAR"
Quando eu clicar em "CANCELAR"
Então a operação é cancelada
E a tela anterior é exibida
Quando eu clicar em "LIMPAR"
E clicar em "CONFIRMAR"
Então a tela de pedido é exibida na tab "Catálogo"
E o botão "Liberar Pagamento" é desabilitado e o carrinho sem contador 
E o nome do pedido é exibido no cabeçalho

@blink
Cenário: PEDIDO-0012 - Pedido com pagamento parcial
Dado que existam produtos cadastrados
E que eu esteja na tela de pedido        
Quando eu criar um pedido
E incluir itens
E selecionar Liberar Pagamento
Então é exibida tela com lista de pedidos abertos, inclusive o atual 
Quando eu realizar uma busca pelo nome do pedido criado
Então a lista de pedidos é filtrada com o pedido recém aberto com o status "EM PAGAMENTO"
Quando eu clicar sobre o pedido
Então a tela de pagamento é exibida, com os itens listados discriminados por quantidade e valor e com o total consolidado
Quando eu clicar em "Pagar"
Então deve ser exibida uma tela para inclusão de pagamento apresentando
E com opções Sair (X) e Nome do pedido 
E label "RESTA A PAGAR" com o valor total da transação
E teclado numérico com as opções "BCK" e "Calculadora"
E botão Pagar
E opções nativas do Android: 'Back', 'Home' e 'Apps'
Quando eu entrar com uma quantia menor do que o valor total do pedido e clicar em Pagar
E realizar o fluxo de pagamento com sucesso
Então deve ser exibida a tela de pedidos na tab de "Pagamentos"
E uma linha apresentando a forma de pagamento utilizada e o valor pago 
E uma linha com a label "TOTAL PAGO" e o valor pago
E uma linha com a label "RESTA A PAGAR" com o valor restante
E o pedido deve continuar com status "EM PAGAMENTO"

@blink
Cenário: PEDIDO-0013 - Pagar valor restante de pedido com pagamento parcial
Dado que eu tenha um pedido com pagamento parcial completado 
E que esteja na tela de detalhe de pagamento
Quando selecionar "Pagar"
E realizar o fluxo de pagamento com a quantia restante
Então deve ser exibida a tela de pedidos na tab de "Pagamentos"
E uma linha apresentando a forma de pagamento utilizada e o valor pago 
E uma linha com a label "TOTAL PAGO" e o valor pago
E uma linha com a label "RESTA A PAGAR" com o valor restante
E o pedido deve continuar com status "EM PAGAMENTO"
E deve existir o opção "PAGO"
E um botão "Pagar Mais"
Quando eu clicar em PAGO
Então deve ser exibida a uma mensagem de confirmação "Deseja marcar esta ordem como paga?"
E as opções "CANCELAR" e "CONFIRMAR"
Quando eu clicar em CONFIRMAR
Então a tela com os pedidos abertos é exibida
E o pedido recém pago deve constar com status "PAGO"
Quando eu selecionar o pedido recém pago
Então a tela com os dados de pagamento do pedido é aberta 
E a opção "FECHAR" disponível
Quando eu clicar em FECHAR
Então deve ser exibida a uma mensagem de confirmação "Deseja realmente encerrar esta ordem?" 
E as opções "CANCELAR" e "CONFIRMAR"
Quando eu clicar em CONFIRMAR
Então a tela com os pedidos abertos é exibida
E o pedido recém pago não deve ser listado

@blink
Cenário: PEDIDO-0014 - Reabrir e alterar status de pedido pago
Dado que eu tenha um pedido fechado em dois pagamentos, um parcial e um totalizando o valor
E que eu esteja na tela de Pedidos 
Quando eu selecionar este pedido fechado
Então deve ser exibida uma tela de Detalhe de Pedido com nome do pedido e status "FECHADO"
E opções Sair (X) e REABRIR
E Tab com as opções: Conta (Selecionado) e Pagamentos
E lista com itens do pedido
E rodapé com a label "TOTAL" e o valor final do pedido
E opções nativas do Android: 'Back', 'Home' e 'Apps'
Quando eu clicar em REABRIR
Então é exibida uma mensagem de confirmação "Tem certeza que deseja reabrir este pedido?" 
E opções "CANCELAR" e "CONFIRMAR"
Quando eu clicar em CANCELAR
Então a tela de detalhe do pedido é exibida novamente com o pedido inalterado
Quando eu clicar em REABRIR
E clicar em CONFIRMAR
Então é exibida a tela de lista de pedidos filtrada por pedidos fechados
Quando eu selecionar a opção de filtro para os pedidos Abertos
Então é exibida a tela de lista de pedidos com o pedido recém reaberto com o status "REABERTO"
Quando eu selecionar o pedido reaberto
Então deve ser exibida uma tela de Detalhe de Pedido com nome do pedido e status "REABERTO"
E opções Sair (X) e PAGO
E Tab com as opções: Conta (Selecionado) e Pagamentos
E lista com itens do pedido
E rodapé com a label "TOTAL" e o valor final do pedido
E botão "Pagar mais"
E opções nativas do Android: 'Back', 'Home' e 'Apps'
Quando eu clicar no botão "Pagar mais" 
E proceder com o pagamento de um valor qualquer com sucesso
Então deve ser exibida uma tela de detalhe do Pedido atual com o status "REABERTO"
E uma linha referente a este último pagamento adicional com o total refletindo o novo valor
Quando eu clicar no botão "PAGO" e selecionar "CONFIRMAR"
Então deve ser exibida uma tela de pedidos abertos 
Quando eu selecionar o pedido recém pago
Então deve ser exibida uma tela de detalhe do Pedido atual com o status "PAGO" e com um botão "FECHAR"
Quando eu clicar no botão "FECHAR" e selecionar "CONFIRMAR"
Então deve ser exibida uma tela de pedidos abertos, em que este último pedido não está listado
Quando eu filtrar os pedidos por pedidos "Fechados"
Então deve ser exibida uma tela de pedidos fechados, em que este último pedido está listado