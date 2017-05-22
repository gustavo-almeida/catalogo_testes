#language:pt

Funcionalidade: Como usuário Cielo LIO, gostaria de validar as funcionalidades de Edição de produto.

@blink
Cenário: EDPROD-CATAG-0001 - Visão geral de produto
Dado que tenha um produto cadastrado
E que eu esteja na tela de Catálogo
Quando clicar sobre um produto
Então deve aparecer um modal de dados do produto selecionado com opções Fechar e Editar
E opções Diminuir (-) e Aumentar (+)

@blink
Cenário: EDPROD-CATAG-0002 - Fechar modal de visão do produto
Dado que eu esteja no modal de dados de um produto
Quando eu clicar no botão de Fechar
Então o modal é fechado exibindo a tela de Catálogo

@blink
Cenário: EDPROD-CATAG-0003 - Acessar tela de edição de produto
Dado que eu esteja no modal de dados de um produto
Quando eu clicar na opção Editar
Então deve aparecer a tela de Editar produto 
Mas com os dados do produto preenchidos

@blink
Cenário: EDPROD-CATAG-0004 - Alterar quantidade pelo modal de dados do produto
Dado que eu esteja no modal de dados de um produto
Quando eu clicar na opção quantidade do produto
Então a quantidade deve ser alterada de acordo com a opção escolhida
E na tela de catálogo deve alterar o valor a ser pago de acordo com a quantidade escolhida

@blink
Cenário: EDPROD-CATAG-0005 - Editar produto
Dado que eu esteja na tela de Editar produto
Quando eu editar alguns dados do produto
E clicar em Confirmar (check)
Então sou redirecionado para a tela de Catálogo
E o produto é exibido atualizado