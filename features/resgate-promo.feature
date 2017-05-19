#language:pt

Funcionalidade: Como usuário Cielo LIO, gostaria de utilizar a extensão PROMO

@blink
Cenário: RESGATE-PROMO-0001 - Validar Mensagem Resgate não efetuado com o botão Cancelar
Dado que eu esteja na tela inicial da Cielo LIO
Quando eu acessar "Ajuda" > "Minha LIO" > "Funções Técnicas"
E entrar com a função '29' e Confirmar
E seguir com dados do cartão e selecionar 'Posto Abc'
| numero_do_cartao    | 4406910000038  |
| validade            | 11/22          |
Então a tela de Resgate de Prêmios com as opções 'Não' e 'Sim' deve ser exibida
Quando eu clicar em 'Sim' na tela de Resgate de Prêmios
E eu selecionar a opção 'E-CUPOM 1' na lista de cupons exibida
E entrar com '1' na página de seleção de quantidade de cupons
E clicar em Cancelar
Então devo voltar para a tela de seleção de E-Cupom
Quando clicar em Cancelar na página de seleção de E-Cupom
Então a mensagem "Resgate não efetuado" deve ser exibida
E sou redirecionado para a página Minha LIO

@blink
Cenário: RESGATE-PROMO-0002 - Validar botão Fechar (X) do Resgate
Dado que eu esteja na tela inicial da Cielo LIO
Quando eu acessar "Ajuda" > "Minha LIO" > "Funções Técnicas"
E entrar com a função '29' e Confirmar
E seguir com dados do cartão e selecionar 'Posto Abc'
| numero_do_cartao    | 4406910000038  |
| validade            | 11/22          |
Então a tela de Resgate de Prêmios com as opções 'Não' e 'Sim' deve ser exibida
Quando eu clicar em 'Sim' na tela de Resgate de Prêmios
E eu selecionar a opção 'E-CUPOM 1' na lista de cupons exibida
E entrar com '1' na página de seleção de quantidade de cupons
E clicar no botão Fechar 'X' no cabeçalho
Então a mensagem "Resgate não efetuado" deve ser exibida
E sou redirecionado para a tela inicial

@blink
Cenário: RESGATE-PROMO-0003 - Cancelar após inserir número de função
Dado que eu esteja na tela inicial da Cielo LIO
Quando eu acessar "Ajuda" > "Minha LIO" > "Funções Técnicas"
E entrar com a função '29' e Confirmar
E clicar em Cancelar
Então a mensagem "Operação Cancelada" deve ser exibida
E sou redirecionado para a página de inserir uma função

@blink
Cenário: RESGATE-PROMO-0004 - Cancelar após inserir dados do cartão
Dado que eu esteja na tela inicial da Cielo LIO
Quando eu acessar "Ajuda" > "Minha LIO" > "Funções Técnicas"
E entrar com a função '29' e Confirmar
E entrar com o número do cartão '4406910000038'
E clicar em Confirmar
E clicar em Fechar na página de seleção de estabelecimento
Então a mensagem "Operação Cancelada" deve ser exibida
E sou redirecionado para a página de inserir uma função

@blink
Cenário: RESGATE-PROMO-0005 - Cancelar após selecionar estabelecimento
Dado que eu esteja na tela inicial da Cielo LIO
Quando eu acessar "Ajuda" > "Minha LIO" > "Funções Técnicas"
E entrar com a função '29' e Confirmar
E entrar com o número do cartão '4406910000038'
E clicar em Confirmar
E selecionar "Posto Abc"
E clicar em Cancelar
Então a mensagem "Operação Cancelada" deve ser exibida
E sou redirecionado para a página de inserir uma função

@blink
Cenário: RESGATE-PROMO-0006 - Cancelar na tela de seleção de cupons
Dado que eu esteja na tela inicial da Cielo LIO
Quando eu acessar "Ajuda" > "Minha LIO" > "Funções Técnicas"
E entrar com a função '29' e Confirmar
E seguir com dados do cartão e selecionar 'Posto Abc'
| numero_do_cartao    | 4406910000038  |
| validade            | 11/22          |
E selecionar 'Sim' na tela de Resgate de Prêmios
E clicar em 'Cancelar' na página de seleção de cupons
Então a mensagem "Resgate não efetuado" deve ser exibida
E sou redirecionado para a página Minha LIO

@blink
Cenário: RESGATE-PROMO-0007 - Resgatar E-CUPOM
Dado que eu esteja na tela inicial da Cielo LIO
Quando eu acessar "Ajuda" > "Minha LIO" > "Funções Técnicas"
E entrar com a função '29' e Confirmar
E seguir com dados do cartão e selecionar 'Posto Abc'
| numero_do_cartao    | 4406910000038  |
| validade            | 11/22          |
E selecionar 'Sim' na tela de Resgate de Prêmios
E eu selecionar a opção 'E-CUPOM 1' na lista de cupons exibida
E entrar com '10' na página de seleção de quantidade de cupons
E clique Confirmar
Então a mensagem "Resgate efetuado! Entregue o prêmio." deve ser exibida
E sou redirecionado para a página Minha LIO

@blink
Esquema do Cenário: RESGATE-PROMO-0008 - Validar valores limite ao resgatar E-CUPOM
Dado que eu esteja na tela inicial da Cielo LIO
Quando eu acessar "Ajuda" > "Minha LIO" > "Funções Técnicas"
E entrar com a função '29' e Confirmar
E seguir com dados do cartão e selecionar 'Posto Abc'
| numero_do_cartao    | 4406910000038  |
| validade            | 11/22          |
E selecionar 'Sim' na tela de Resgate de Prêmios
E eu selecionar a opção 'E-CUPOM 1' na lista de cupons exibida
Então ao Confirmar o <valor> do cupom, receberei a <resposta>
| valor  | resposta                                                          |
| 0      | Valor informado não pode ser zero. Disponível: 10.                |
| 11     | Valor informado superior a quantidade disponível. Disponível: 10. |