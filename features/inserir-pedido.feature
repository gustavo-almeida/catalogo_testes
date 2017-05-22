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


Cenário: PEDIDO-0005
Dado  Que o usuário  esteja na tela de pedido 

Quando  selecionar os pedidos  fechados 
E clicar sobre a Opção de Busca (ícone de Lupa) 

Então  deve ser exibida uma caixa de texto com o Label “Pesquisar”, uma opção de voltar e abaixo estão listados os pedidos fechados pela LIO. Os seguintes controles ficam invisíveis:
Lista de Seleção com as Opções:Abertos e fechados
Opção de Busca (ícone de Lupa)
(+) Menu com a opção “Novo Pedido” habilitado


Quando o usuário digitar na caixa de texto “Pesquisar” o nome do pedido recém criado

Então  o painel de visualização de pedidos deve estar vazio

Quando  o usuário clicar em voltar 
E na Lista de Seleção selecionar o valor “Abertos”
E clicar sobre a Opção de Busca (ícone de Lupa) 
E o usuário digitar na caixa de texto “Pesquisar” o nome completo do pedido recém criado

Então  o painel de visualização de pedidos deve exibir o pedido recém criado

Quando  o usuário clicar em voltar 
E na Lista de Seleção selecionar o valor “Abertos”
E clicar sobre a Opção de Busca (ícone de Lupa) 
E o usuário digitar na caixa de texto “Pesquisar” um caractere qualquer do nome do pedido recém criado

Então  o painel de visualização de pedidos deve exibir o pedido recém criado dentre os outros pedidos cujo nome também contenha o caractere digitado

Cenário: PEDIDO-0006
Dado  Que o usuário  esteja na tela de pedido e o pedido recém aberto esteja listado

Quando  o usuário clicar no pedido recém aberto

Então  deve ser exibida uma tela de Fechamento de Pedido com
Fragmento com a opção sair (Botão X), nome do pedido com o status “EM PAGAMENTO” e um botão com a label PAGO
Tab com as opções: Conta (Selecionado) e Pagamento
Lista com 2 itens com quantidade 1, tipo  “Valor Avulso” e valores “R$4,00” e “R$2,50” respectivamente.
Uma linha ao final da lista com a label “TOTAL” e o valor final do pedido “R$6,50”
Um botão com a opção pagar
Opções Default do android: Back, Home e Apps

Quando  o usuário clicar no Botão X

Então  deve ser exibida uma mensagem “Este pedido ainda não foi totalmente pago. Deseja realmente sair?” com as opções “CANCELAR” e “CONFIRMAR”

Quando  o usuário clicar em “Confirmar”

Então  a tela pedidos é exibida novamente com o último filtro de pesquisa utilizado

Quando  o usuário clicar no pedido recém aberto

Então  deve ser exibida a tela de Fechamento de Pedido com os dados de pedido inalterados

Quando  o usuário clicar no botão PAGO

Então  deve ser exibida uma mensagem “Faltam R$6,00. Deseja classificar como PAGO?” com as opções “CANCELAR” e “CONFIRMAR”

Quando  o usuário clicar em “Cancelar”

Então  deve ser exibida a tela de Fechamento de Pedido com os dados de pedido inalterados

Quando  o usuário clicar no botão PAGO

Então  deve ser exibida uma mensagem “Faltam R$6,50. Deseja classificar como PAGO?” com as opções “CANCELAR” e “CONFIRMAR”

Quando  o usuário clicar em “Confirmar”

Então  a tela pedidos é exibida novamente com o último filtro de pesquisa utilizado e o pedido passa a ter o status “PAGO” e com o ícone de pedido marcado em verde.

Cenário: PEDIDO-0007
Dado  Que o usuário tenha marcado um pedido como PAGO 
E que este pedido tenha dois itens avulsos com valores R$4,00 e R$2,50 
E esteja na tela de pedidos 
E o pedido esteja listado

Quando  o usuário clicar no pedido marcado como pago

Então  deve ser exibida uma tela de Fechamento de Pedido com
Fragmento com a opção sair (Botão X), nome do pedido com o status “EM PAGAMENTO” e um botão com a label “FECHAR”
Tab com as opções: Conta (Selecionado) e Pagamentos
Lista com 2 itens com quantidade 1, tipo  “Valor Avulso” e valores “R$4,00” e “R$2,50” respectivamente.
Uma linha ao final da lista com a label “TOTAL” e o valor final do pedido “R$6,50”
Um botão com a opção pagar
Opções Default do android: Back, Home e Apps

Quando  o usuário clicar na tab “Pagamentos”

Então  deve ser exibida a tela de Fechamento de Pedido com
Fragmento com a opção sair (Botão X), nome do pedido com o status “EM PAGAMENTO” e um botão com a label “FECHAR”
Tab com as opções: Conta e Pagamentos (Selecionado) 
Lista sem itens e com a mensagem “Não há pagamentos” 
Uma linha ao final da lista com a label “RESTA A PAGAR” e o valor “R$6,50”
Opções Default do android: Back, Home e Apps

Quando  o usuário clicar em “FECHAR”

Então  deve ser exibida uma mensagem “Deseja realmente encerrar esta ordem?” com as opções “CANCELAR” e “CONFIRMAR”

Quando  o usuário clicar em “Cancelar”

Então  deve ser exibida novamente a tela de Fechamento de Pedido na tab “PAGAMENTOS”

Quando  o usuário clicar em “FECHAR”

Então  deve ser exibida uma mensagem “Deseja realmente encerrar esta ordem?” com as opções “CANCELAR” e “CONFIRMAR”

Quando  o usuário clicar em “Confirmar”

Então  a tela pedidos é exibida novamente com o último filtro de pesquisa utilizado e o pedido não é mais exibido por não estar mais aberto.

Quando  o usuário limpar o filtro de pedidos e selecionar a opção “Fechados”

Então  a lista de pedidos é atualizada e o pedido recém fechado é listado.


Cenário: PEDIDO-0008 
Dado  Que o usuário  esteja na tela de pedido 
        E que exista um produto X cadastrado com valor “R$4,99" com categoria A
E que exista um produto Y cadastrado com valor “R$10,00" com categoria B
E que exista um produto Z cadastrado com valor “R$20,00" com categoria C

Quando  o usuário criar um pedido
        E selecionar a tab Catálogo

Então  deve ser exibida uma tela de Pedido contendo:
Fragmento com a opção voltar (Botão <-) e nome do pedido 
Tab com as opções: Valor e Catálogo(Selecionado)
Lista de Seleção com as Opções: Todos os itens (Selecionado), A, B e C 
Opção de Busca (ícone de Lupa)
Opção de Leitura por código de barras(ícone de barcode)
Botão ...
Lista com itens A, B e C separados por categoria, cada um com contador “0” e botões de + e -. 
Botão “Liberar Pagamento” desabilitado e botão com ícone de carrinho de compras desabilitado.
TabBar: Vender (Selecionada), Minha Conta, Apps e Ajuda
Opções Default do android: Back, Home e Apps



Cenário: PEDIDO-0009 
Dado  Que o usuário  esteja na tela de pedido 
        E que exista um produto X cadastrado com valor “R$4,99" com categoria A
E que exista um produto Y cadastrado com valor “R$10,00" com categoria B
E que exista um produto Z cadastrado com valor “R$20,00" com categoria C

Quando  o usuário criar um pedido
        E selecionar a tab Catálogo
        E na Lista de Seleção de categoria o usuário escolher o valor A

Então  a lista de itens exibe apenas o item X e a lista de Seleção exibe o valor A

Quando  o usuário escolher o valor C na lista de seleção de categoria 

Então  a lista de itens exibe apenas o item Z e a lista de Seleção exibe o valor C



Cenário: PEDIDO-0010
Dado  Que o usuário  esteja na tela de pedido 
        E que exista um produto X cadastrado com valor “R$4,99" com categoria A
E que exista um produto Y cadastrado com valor “R$10,00" com categoria B
E que exista um produto Z cadastrado com valor “R$20,00" com categoria C

Quando  o usuário criar um pedido
        E selecionar a tab Catálogo
        E clicar sobre a opção de busca (botão lupa)

Então  é exibido um botão voltar e uma caixa de texto com o valor “Pesquisar…”

Quando  o usuário digitar o valor Y e clicar OK

Então é listado o produto Y, com quantidade 0 e botões de  valor “-” e “+”

Quando  o usuário clicar 2 vezes em “+” e “1” vez em “-”

Então  o contador é atualizado para “1”, depois “2”, depois “1” 
        E o botão Liberar Pagamento tem o valor atualizado “R$10,00”, depois “R$20,00”, depois “R$10,00”
        E o ícone do carrinho tem o contador iniciado com 1

Quando  o usuário digitar o valor Z e clicar OK

Então é listado o produto Z, com quantidade 0 e botões de  valor “-” e “+”

Quando  o usuário clicar 5 vezes em “+” e “1” vez em “-”

Então  o contador é atualizado para “1”, depois “2”, depois “3”, depois “4”, depois “5”, depois “4”
        E o botão Liberar Pagamento tem o valor atualizado “R$30,00”, depois “R$50,00”, depois “R$70,00”, depois “R$90,00”, depois “R$110,00”, depois “R$90,00”
        E o ícone do carrinho tem o contador atualizado para 2

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


