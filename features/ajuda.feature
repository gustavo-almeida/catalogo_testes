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

Cenário: AJUDA-CHAT_ONLINE-0001 - Acessar Chat online
Dado que eu esteja na tela Ajuda
Quando eu escolher a opção Chat online
Então a tela de Chat online é exibida com o Serviço de Suporte
E opção Novo Chat

Cenário: AJUDA-DÊ_A_SUA_OPINIÃO-0001 - Acessar Dê a sua opinião
Dado que eu esteja na tela Ajuda
Quando eu escolher a opção Dê a sua opinião
Então a tela Dê a sua opinião é exibida com opções Voltar e Enviar
E campos destinados ao assunto e mensagem para a enviada

Cenário: AJUDA-DÊ_A_SUA_OPINIÃO-0002 - Enviar mensagem em Dê a sua opinião
Dado que eu esteja na tela Dê a sua opinião em Ajuda  
Quando eu enviar uma opinião escolhendo o assunto e redigindo uma mensagem
Então a mensagem é encaminhada com sucesso
E eu sou redirecionado para a tela Ajuda

Cenário: AJUDA-DÊ_A_SUA_OPINIÃO-0003 - Cancelar envio de mensagem em Dê a sua opinião
Dado que eu esteja na tela Dê a sua opinião em Ajuda  
Quando clicar em Voltar
Então o menu anterior com as demais opções de Ajuda é exibido

Cenário: AJUDA-TELEFONES_ÚTEIS-0001 - Acessar Telefones úteis
Dado que eu esteja na tela Ajuda
Quando eu escolher a opção Telefones úteis
Então a tela Telefones Úteis é exibida com opção Buscar e 8 opções possíveis
  
Cenário: AJUDA-TELEFONES_ÚTEIS-0002 - Expandir Telefone na lista de Telefones úteis
Dado que eu esteja na tela Telefones úteis em Ajuda
Quando eu clicar em alguma opção listada de Telefone Útil
Então o referido Telefone é mostrado na forma de "scroll down"

Cenário: AJUDA-TELEFONES_ÚTEIS-0003 - Realizar busca em Telefones úteis
Dado que eu esteja na tela Telefones úteis em Ajuda
Quando eu realizar uma busca com termo válido
Então as opções de telefone são filtradas obedecendo ao termo inserido

Cenário: AJUDA-AJUSTES-0001 - Acessar Ajustes em Ajuda
Dado que eu esteja na tela Ajuda
Quando eu escolher a opção Ajustes
Então a tela de Ajustes é exibida com 3 subseções e ao todo 9 opções

Cenário: AJUDA-AJUSTES-0002 - Acessar Ajuste Wi-fi em Ajuda
Dado que eu esteja na tela Ajustes em Ajuda
Quando eu escolher a opção Wi-Fi
Então as redes disponíveis bem como o Switch de habilitar ou desabilitar o Wi-Fi é mostrado

Cenário: AJUDA-AJUSTES-0003 - Acessar Ajuste Tela em Ajuda
Dado que eu esteja na tela Ajustes em Ajuda
Quando eu escolher a opção Tela
Então as opções de Tela são exibidos

Cenário: AJUDA-AJUSTES-0004 - Acessar Ajuste Som e notificação em Ajuda
Dado que eu esteja na tela Ajustes em Ajuda
Quando eu escolher a opção Som e notificação
Então as opções de Som e notificação são exibidos

Cenário: AJUDA-AJUSTES-0005 - Acessar Ajuste Bateria em Ajuda
Dado que eu esteja na tela Ajustes em Ajuda
Quando eu escolher a opção Bateria
Então as tela Bateria com as devidas informações é exibida

Cenário: AJUDA-AJUSTES-0006 - Acessar Ajuste Data e hora em Ajuda
Dado que eu esteja na tela Ajustes em Ajuda
Quando eu escolher a opção Data e hora
Então as opções de Data e hora são exibidas

Cenário: AJUDA-AJUSTES-0007 - Acessar Ajuste Impressão em Ajuda
Dado que eu esteja na tela Ajustes em Ajuda
Quando eu escolher a opção Impressão
Então as opções de Impressão são exibidas

Cenário: AJUDA-SOBRE_A_CIELO_LIO-0001 - Acessar Minha LIO
Dado que eu esteja na tela Ajuda
Quando eu escolher a opção Minha LIO
Então a tela Minha LIO é exibida com as informações do plano contratado
E opção de atualização de aplicativos
E bloco Geral com opções de funções Administrativas, Técnicas e Sobre

Cenário: AJUDA-SOBRE_A_CIELO_LIO-0002 - Buscar atualizações em Minha LIO
Dado que eu esteja na tela Minha LIO em Ajuda
Quando eu escolher a opção Buscar atualizações
Então o sistema verificará se há atualização disponível para ser feita

Cenário: AJUDA-SOBRE_A_CIELO_LIO-0003 - Voltar de Minha LIO
Dado que eu esteja na tela Minha LIO em Ajuda
Quando eu clicar em Voltar
Então o menu anterior com as demais opções de Ajuda é mostrado

@non-blink
Cenário: AJUDA-SOBRE_A_CIELO_LIO-0004 - Acessar Informações de SIM Card 1
Dado que eu esteja na tela Minha LIO em Ajuda
Quando eu acessar a opção Sobre
E acessar a opção "Informações de Telefonia"
E clicar em "Número de SIM Card (Slot 1)" 
Então uma tela com um código de barras referente ao SIM Card 1 é exibida

@non-blink
Cenário: AJUDA-SOBRE_A_CIELO_LIO-0005
Dado que a Cielo LIO contenha 2 SIM Cards instalados
E que eu esteja na tela Minha LIO em Ajuda
Quando eu acessar a opção Sobre
E acessar a opção "Informações de Telefonia"
E clicar em "Número de SIM Card (Slot 2)" 
Então uma tela com um código de barras referente ao SIM Card 2 é exibida