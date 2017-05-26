#language:pt

Funcionalidade: Como usuário Cielo LIO, gostaria de validar as funcionalidades do menu Ajuda.


Cenário: AJUDA-APRENDA_A_USAR-0001 - Acessar Aprenda a usar
Dado que eu esteja na tela Ajuda
Quando eu escolher a opção Aprenda a usar
Então a tela Aprenda a usar é exibida com opção Voltar
E 5 vídeos e 4 sequências de imagens, ensinando como realizar as funcionalidades principais do aparelho

Cenário: AJUDA-DÚVIDAS_FREQUENTES-0001 - Acessar Dúvidas frequentes
Dado que eu esteja na tela Ajuda
Quando eu escolher a opção Dúvidas frequentes
Então a tela de Dúvidas Frequentes é exibida com as 50 perguntas mais feitas pelos usuários

Cenário: AJUDA-DÚVIDAS_FREQUENTES-0002 - Acessar resposta à dúvida frequente
Dado que eu esteja na tela Dúvidas Frequentes em Ajuda
Quando eu escolher alguma Dúvida Frequente
Então a resposta da dúvida é exibida em uma nova telacom opção Voltar

Cenário: AJUDA-DÚVIDAS_FREQUENTES-0003 - Voltar de uma resposta à dúvida frequente
Dado que eu esteja na tela Dúvidas Frequentes em Ajuda
Quando eu escolher alguma Dúvida Frequente
E eu clicar em Voltar
Então o menu anterior com as demais Dúvidas Frequentes é mostrado

Cenário: AJUDA-CHAT_ONLINE-0001
Dado  o usuário clique na aba Ajuda

Quando  o usuário escolher a opção de Chat Online

Então  a tela de Chat Online é exibida com o Serviço de Suporte

Cenário: AJUDA-DÊ_A_SUA_OPINIÃO-0001
Dado  o usuário clique na aba Ajuda

Quando  o usuário escolher a opção de Dê a sua Opinião

Então  a tela de Dê a sua Opinião é exibida com os campos destinados ao assunto e mensagem para ser enviada


Cenário: AJUDA-DÊ_A_SUA_OPINIÃO-0002
Dado  o usuário clique na  opção de Dê a sua Opinião

Quando  o usuário tenha escrito sua Opinião e clique em prosseguir

Então  a mensagem é encaminhada.


Cenário: AJUDA-DÊ_A_SUA_OPINIÃO-0003
Dado  que o  usuário tenha clicado em  Dê a sua Opinião

Quando  o usuário queira voltar ao menu anterior e clique no botão voltar

Então  o menu anterior com as demais opções de Ajuda é mostrado

Cenário: AJUDA-TELEFONES_ÚTEIS-0001
Dado  o usuário clique na aba Ajuda

Quando  o usuário escolher a opção de Telefones Úteis

Então  a tela de Telefones Úteis  é exibida com 8 opções possíveis

  
Cenário: AJUDA-TELEFONES_ÚTEIS-0002
Dado  o usuário clique na aba Ajuda

Quando  o usuário clica em alguma opção listada de Telefone Útil

Então  o referido Telefone é mostrado na forma de “scroll down”


Cenário: AJUDA-TELEFONES_ÚTEIS-0003
Dado  o usuário tenha escolhido a opção de Telefones Úteis

Quando  o usuário clica na lupa e digita o local desejado ou uma palavra referente ao nome 

Então  é exibida a pesquisa (caso exista) desejada

Cenário: AJUDA-AJUSTES-0001
Dado  o usuário clique na aba Ajuda

Quando  o usuário escolher a opção de Ajustes

Então a tela de Ajustes  é exibida com 3 subseções e ao todo 9 opções


Cenário: AJUDA-AJUSTES-0002
Dado  o usuário tenha escolhido a opção de Ajustes

Quando  o usuário escolher a opção de Wi-Fi

Então  as Redes disponíveis bem como o Switch de habilitar ou desabilitar o Wi-Fi é mostrado

Cenário: AJUDA-AJUSTES-0003
Dado  o usuário tenha escolhido a opção de Ajustes

Quando  o usuário escolher a opção de Tela

Então  as opções de Tela são exibidos

 Cenário: AJUDA-AJUSTES-0004
Dado  o usuário tenha escolhido a opção de Ajustes

Quando  o usuário escolher a opção de Som e notificação

Então  as opções de Som e notificação são exibidos


Cenário: AJUDA-AJUSTES-0005
Dado  o usuário tenha escolhido a opção de Ajustes

Quando  o usuário escolher a opção de Bateria

Então  as Tela de Bateria com as devidas informações é exibida


Cenário: AJUDA-AJUSTES-0006
Dado  o usuário tenha escolhido a opção de Ajustes

Quando  o usuário escolher a opção de Data e hora

Então  as opções de Data e hora são exibidas


Cenário: AJUDA-AJUSTES-0007
Dado  o usuário tenha escolhido a opção de Ajustes

Quando  o usuário escolher a opção de Impressão

Então  as opções de Impressão são exibidas

Cenário: AJUDA-SOBRE_A_CIELO_LIO-0001
Dado  o usuário clique na aba Ajuda

Quando  o usuário escolher a opção de Sobre a Cielo LIO

Então  a tela de Sobre a Cielo LIO é exibida com as informações do aparelho e do software, além de opções análise e atualização. Adicionalmente são exibidas as informações de plano contratado e de versão do launcher.



Cenário: AJUDA-SOBRE_A_CIELO_LIO-0002
Dado  o usuário clique na  opção de Sobre a Cielo LIO

Quando  o usuário escolher a opção de Atualizar o Cielo OS

Então  o Sistema verificará se há atualização disponível para ser feita


Cenário: AJUDA-SOBRE_A_CIELO_LIO-0003
Dado  o usuário clique na  opção de Sobre a Cielo LIO

Quando  o usuário queira voltar ao menu anterior e clique no botão voltar

Então  o menu anterior com as demais opções de Ajuda é mostrado

 Cenário: AJUDA-SOBRE_A_CIELO_LIO-0004
Dado  o usuário clique na  opção de Sobre a Cielo LIO e, em seguida, clique na opção “Informações de telefonia”

Quando  o usuário clicar na opção “Número de SIM Card (SIM Card 1)” 

Então  uma  tela com um código de barras referente ao SIM Card 1 é exibida

Cenário: AJUDA-SOBRE_A_CIELO_LIO-0005
Dado  o Cielo Lio contenha 2 SIM Cards instalados, usuário clique na aba Ajuda, em seguida, na  opção de Sobre a Cielo LIO e, em seguida, clique na opção “Informações de telefonia”.

Quando  o usuário clicar na opção “Número de SIM Card (SIM Card 2)” 

Então  uma  tela com um código de barras referente ao SIM Card 2 é exibida