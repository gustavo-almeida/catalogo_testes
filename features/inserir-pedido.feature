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
E esteja na página de pedido criado com um produto Y incluído no carrinho
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
E o botão Liberar Pagamento tem o valor atualizado de "R$30,00" a "R$110,00", e volta para "R$90,00"
E o ícone do carrinho tem o contador atualizado para '2'


Cenário: PEDIDO-0011
Dado  Que o usuário  esteja na tela de pedido resultante do caso Cenário: PEDIDO-0010

Quando  o usuário clicar no carrinho

Então  deve ser exibida uma tela de detalhe do Pedido com
Fragmento com a opção sair (Botão X), nome do pedido com o status “INICIADO” e um botão com a label “LIMPAR”
Tab com as opções: Conta (Selecionado) e Pagamentos
Lista com 2 itens: item Y com quantidade 1 e valor total R$10,00;  item Z com quantidade 4 e valor total R$80,00
Uma linha ao final da lista com a label “TOTAL” e o valor final do pedido “R$90,00”
Opções Default do android: Back, Home e Apps

Quando  o usuário clicar em “LIMPAR”

Então  deve ser exibida uma tela de confirmação “Deseja limpar carrinho?” com as opções “CANCELAR” e “CONFIRMAR”

Quando  o usuário clicar em “CANCELAR”

Então  usuário é retornado à tela anterior

Quando  o usuário clicar em “LIMPAR” 
        E clicar em “CONFIRMAR”

Então  usuário é retornado à tela de pedido, na tab “Catálogo”, com o botão “Liberar Pagamento” desabilitado e o carrinho vazio. O nome do pedido é exibido no topo da tela.


Cenário: PEDIDO-0012
Dado  Que o usuário  esteja na tela de pedido 
        E que existam um produtos cadastrados

Quando  o usuário criar um pedido
        E incluir itens
        E selecionar “Liberar Pagamento”

Então  usuário é retornado à tela de lista de pedidos, onde estão listados todos os pedidos abertos, inclusive o atual. 

Quando  o usuário clicar sobre a lupa
        E digitar o nome do pedido

Então  a lista de pedidos é filtrada para somente conter o pedido recém aberto como status “EM PAGAMENTO”.

Quando  o usuário clicar sobre o pedido

Então  a tela de pagamento é exibida, com os itens listados discriminados por quantidade e valor e com o total consolidado

Quando  o usuário clicar sobre o botão “Pagar”
    
Então  a tela de pagamento é exibida, com os itens listados discriminados por quantidade e valor e com o total consolidado

Quando  o usuário clicar sobre o botão “Pagar”

Então  deve ser exibida uma tela para inclusão de pagamento apresentando:
Fragmento com a opção sair (Botão X) e nome do pedido 
Fragmento com a label “RESTA A PAGAR” e o valor total da transação.
Um teclado numérico com as opções “BACK” e calculadora
Um botão pagar
Opções Default do android: Back, Home e Apps

Quando  o usuário entrar uma quantia menor do que o valor total do pedido e clicar sobre o botão “Pagar”
        E realizar o fluxo de pagamento com sucesso

Então  deve ser exibida a tela de pedidos na tab de “Pagamentos” com:
Uma linha apresentando a forma de pagamento utilizada e o valor pago. 
Uma linha com a label “TOTAL PAGO” e o valor pago
Uma linha com a label “RESTA A PAGAR” com o valor restante
        E o pedido deve continuar com status “EM PAGAMENTO”



Cenário: PEDIDO-0013
Dado  Que o usuário  esteja na tela de detalhe de pagamento  pedido anterior e selecione “Pagar”

Quando  o usuário entrar a quantia restante do pedido e clicar sobre o botão “Pagar”
        E realizar o fluxo de pagamento com sucesso

Então  deve ser exibida a tela de pedidos na tab de “Pagamentos” com:
Uma linha apresentando a forma de pagamento utilizada e o valor pago. 
Uma linha com a label “TOTAL PAGO” e o valor pago
Uma linha com a label “RESTA A PAGAR” com o valor restante
        E o pedido deve continuar com status “EM PAGAMENTO”
        E deve existir o botão “PAGO”
        E um botão com a opção o label “Pagar Mais”

Quando  o usuário clicar em “PAGO”

Então  deve ser exibida a uma mensagem de confirmação “Deseja marcar esta ordem como paga?” e as opções “CANCELAR” e “CONFIRMAR”


Quando  o usuário clicar em “CONFIRMAR”

Então  a tela com os pedidos abertos é exibida. O pedido recém pago deve constar com status “PAGO”

Quando  o usuário selecionar o pedido recém pago

Então  a tela com os dados de pagamento do pedido é aberta. 
E a opção “FECHAR” está disponível

Quando  o usuário clicar em “FECHAR” 

Então  deve ser exibida a uma mensagem de confirmação “Deseja marcar esta ordem como paga?” e as opções “CANCELAR” e “CONFIRMAR”

Quando  o usuário clicar em “CONFIRMAR”

Então a tela com os pedidos abertos é exibida. O pedido recém pago não deve ser listado

Cenário: PEDIDO-0014
Dado  Que o usuário  esteja na tela de pedido 
        E que existam um produtos cadastrados com pedidos fechados

Quando  o usuário selecionar o pedido fechado no caso CIELO-PEDIDO-0013

Então  deve ser exibida uma tela de detalhe do Pedido com
Fragmento com a opção sair (Botão X), nome do pedido com o status “FECHADO” e um botão com a label “REABRIR”
Tab com as opções: Conta (Selecionado) e Pagamentos
Lista com os itens do pedido
Uma linha ao final da lista com a label “TOTAL” e o valor final do pedido
Opções Default do android: Back, Home e Apps

Quando  o usuário clicar em “REABRIR”

Então  deve ser exibida uma mensagem de confirmação “Tem certeza que deseja reabrir este pedido?” com as opções “CANCELAR” e “CONFIRMAR”

Quando  o usuário clicar em “CANCELAR”

Então  a tela de detalhe do PEDIDO é exibida novamente com o pedido inalterado

Quando  o usuário clicar em “REABRIR”
        E selecionar “CONFIRMAR”

Então  é exibida a tela de lista de pedidos, com filtro para os pedidos fechados.

Quando  o usuário selecionar a opção de filtro para os pedidos Abertos

Então  é exibida a tela de lista de pedidos onde existe o pedido recém reaberto com o status “REABERTO”

Quando  o usuário selecionar o pedido recém reaberto

Então deve ser exibida uma tela de detalhe do Pedido com
Fragmento com a opção sair (Botão X), nome do pedido com o status “REABERTO” e um botão com a label “PAGO”
Tab com as opções: Conta (Selecionado) e Pagamentos
Lista com os itens do pedido
Uma linha ao final da lista com a label “TOTAL” e o valor final do pedido
Um botão com a opção “Pagar mais”
Opções Default do android: Back, Home e Apps

Quando  o usuário selecionar clicar no botão “Pagar mais” 
        E proceder com o pagamento de um valor qualquer com sucesso

Então deve ser exibida uma tela de detalhe do Pedido com o mesmo pedido com o status “REABERTO”, com uma linha referente a este último pagamento adicional e o total reflete o novo valor.

Quando  o usuário clicar no botão “PAGO” e selecionar “CONFIRMAR”

Então deve ser exibida uma tela de pedidos abertos. 

Quando  o usuário selecionar o pedido recém pago

Então deve ser exibida uma tela de detalhe do Pedido com o mesmo pedido com o status “PAGO” e com um botão “FECHAR”

Quando  o usuário clicar no botão “FECHAR” e selecionar “CONFIRMAR”

Então deve ser exibida uma tela de pedidos abertos, onde este último pedido não está listado
 
Quando  o usuário selecionar a opção de filtrar os pedidos por pedidos “Fechados”

Então deve ser exibida uma tela de pedidos fechados, onde este último pedido está listado


