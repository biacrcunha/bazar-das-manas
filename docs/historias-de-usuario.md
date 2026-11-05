# Histórias de usuária — Bazar das Manas

Formato: **Como** [quem], **quero** [o quê], **para** [por quê], seguido dos critérios de aceite, que são as regras que precisam funcionar para a história estar pronta.

| Tema | Histórias |
| --- | --- |
| Acesso | US01 a US04 |
| Anunciar | US05 e US06 |
| Vitrine | US07 a US10 |
| Reservar e fila de espera | US11 a US14 |
| Negociar | US15 a US17 |
| Carrinho e Cofrinho | US18 a US21 |
| Avisos | US22 a US24 |

---

## Acesso

### US01 — Pedir um convite
**Como** integrante, **quero** pedir à administradora para convidar uma conhecida **para** que ela possa entrar no grupo.
- O pedido tem o nome e o celular da pessoa e um campo opcional para dizer quem ela é (ex.: "minha tia").
- A administradora é avisada do pedido.

### US02 — Aprovar ou recusar um convite
**Como** administradora, **quero** aprovar ou recusar os pedidos de convite **para** que o grupo continue só de conhecidas.
- Ao aprovar, é gerado um link de convite, que a integrante que pediu **ou** a própria administradora pode enviar à nova pessoa.
- Ao recusar, a integrante que pediu é avisada.
- A administradora também pode gerar um convite diretamente, sem pedido.

### US03 — Cadastrar-se pelo convite
**Como** convidada, **quero** me cadastrar pelo link de convite **para** participar do bazar.
- O cadastro pede nome, celular e senha.
- Cada link vale para **uma** pessoa só e expira depois de alguns dias.

### US04 — Entrar no app
**Como** integrante, **quero** entrar com meu celular e senha **para** acessar o bazar.
- Depois de entrar, continuo logada no celular até sair.
- Se eu errar a senha, vejo uma mensagem clara.

---

## Anunciar

### US05 — Anunciar um item
**Como** vendedora, **quero** publicar um item com foto e preço **para** vendê-lo ao grupo.
- O anúncio tem: foto (obrigatória, até 4), título, preço e descrição (opcional).
- O anúncio tem o **prazo da reserva**, escolhido pela vendedora (ex.: 12 h, 24 h, 48 h).
- O anúncio pode ter uma **condição de pagamento** (ex.: "pagamento no mesmo dia").
- Cada anúncio é de **um item só**; não há venda em lote.
- O item aparece na vitrine assim que é publicado.

### US06 — Editar ou remover um anúncio
**Como** vendedora, **quero** editar ou remover meu anúncio **para** corrigir informações ou desistir da venda.
- Só posso editar ou remover enquanto o item estiver **disponível**, sem reserva.
- Ao remover, o item sai da vitrine.

---

## Vitrine

### US07 — Ver os itens disponíveis
**Como** integrante, **quero** ver todos os itens à venda **para** encontrar o que me interessa.
- A vitrine mostra foto, título, preço e quem está vendendo.
- Os itens mais recentes aparecem primeiro.
- Itens reservados aparecem com a indicação "Reservado", e ainda dá para entrar na fila.
- Itens vendidos não aparecem na vitrine.

### US08 — Ver os detalhes de um item
**Como** integrante, **quero** abrir um item **para** ver todas as fotos, a descrição, a condição de pagamento e o prazo da reserva.

### US09 — Destacar itens esquecidos
**Como** vendedora, **quero** que itens sem interessadas há vários dias ganhem destaque **para** que eles não fiquem esquecidos.
- Itens disponíveis há **7 dias** sem nenhum "Quero" recebem o selo "Ainda disponível".

### US10 — Ver a vitrine de uma integrante
**Como** integrante, **quero** ver os itens de uma pessoa específica **para** acompanhar o que ela está vendendo.

---

## Reservar e fila de espera

### US11 — Dizer "Quero"
**Como** compradora, **quero** clicar em "Quero" num item **para** garantir a prioridade na compra.
- Se o item estiver disponível, ele fica reservado para mim e eu sigo para a negociação.
- Se duas pessoas clicarem quase ao mesmo tempo, **só a primeira** fica com o item, sem empate.
- Não consigo dizer "Quero" num item que eu mesma anunciei.

### US12 — Entrar na fila de espera
**Como** compradora, **quero** entrar na fila de um item já reservado **para** ficar com ele se a primeira desistir.
- Ao clicar em "Quero" num item reservado, entro no fim da fila e vejo minha posição.
- Não consigo entrar duas vezes na fila do mesmo item.
- Posso sair da fila quando quiser.

### US13 — Passar o item para a próxima da fila
**Como** integrante, **quero** que o item passe automaticamente para a próxima da fila **para** ninguém precisar voltar na conversa procurando quem respondeu depois.
- Isso acontece quando: a compradora desiste, o prazo da reserva acaba sem acordo, ou a vendedora encerra a negociação.
- Se a fila estiver vazia, o item volta a ficar disponível na vitrine.

### US14 — Desistir de um item
**Como** compradora, **quero** desistir de um item que reservei **para** liberá-lo para a próxima.

---

## Negociar

### US15 — Fazer uma proposta
**Como** compradora com a reserva, **quero** propor como vou pagar e receber o item **para** fechar o acordo com a vendedora.
- A proposta tem: **valor** (vem preenchido com o preço do anúncio, mas posso mudar), forma de pagamento (Pix na hora, Pix agendado ou parcelado), quantidade de parcelas e datas.
- A proposta tem a **entrega** combinada, num campo de texto livre (ex.: "retiro na sua casa sábado", "deixo com a Carla").
- Se o anúncio exigir pagamento no mesmo dia, não consigo propor parcelamento.
- A soma das parcelas precisa ser igual ao valor proposto.

### US16 — Aceitar ou recusar uma proposta
**Como** vendedora, **quero** aceitar ou recusar a proposta **para** decidir se vendo nessas condições.
- Ao aceitar, o item é marcado como **vendido** e sai da vitrine; as parcelas entram no Carrinho da compradora e no meu Cofrinho.
- Ao aceitar, as integrantes que estavam na fila são avisadas de que o item foi vendido.
- Ao recusar, a compradora pode fazer **uma nova proposta**, enquanto o prazo da reserva não acabar.
- Posso encerrar a negociação a qualquer momento, e o item passa para a próxima da fila.

### US17 — Conversar pelo WhatsApp
**Como** compradora ou vendedora em uma negociação, **quero** um botão que abra a conversa com a outra pessoa no WhatsApp **para** combinar detalhes que não cabem na proposta.
- O botão aparece na tela da negociação, para as duas partes.
- A conversa abre com uma mensagem já preenchida citando o item.
- O botão só aparece entre as duas pessoas da negociação: quem está na fila não vê o contato da vendedora.

---

## Carrinho e Cofrinho

### US18 — Ver o Carrinho
**Como** compradora, **quero** ver o que devo pagar **para** não esquecer datas, valores e para quem pagar.
- Cada parcela mostra: item, vendedora, valor e data.
- As parcelas atrasadas aparecem em destaque.
- Vejo o total que ainda devo.

### US19 — Ver o Cofrinho
**Como** vendedora, **quero** ver o que tenho a receber **para** substituir o caderninho.
- Cada parcela mostra: item, compradora, valor e data.
- As parcelas **atrasadas aparecem em vermelho**.
- Vejo o total a receber e o que já recebi.

### US20 — Confirmar pagamentos
**Como** compradora, **quero** avisar que paguei uma parcela, **e como** vendedora, **quero** confirmar que recebi, **para** que as duas tenham o mesmo controle.
- A compradora marca "Paguei", e a parcela fica como **aguardando confirmação**.
- A vendedora é avisada e confirma "Recebi" ou responde "Não recebi".
- A parcela só sai do Carrinho e entra como recebida no Cofrinho depois da confirmação da vendedora.
- A vendedora também pode marcar "Recebi" direto, sem esperar a compradora.

### US21 — Marcar a entrega como feita
**Como** vendedora, **quero** marcar o item como entregue **para** saber o que ainda falta entregar.
- Quando todas as parcelas estiverem recebidas e o item entregue, a venda aparece como **concluída**.

---

## Avisos

### US22 — Lembretes de parcela
**Como** compradora, **quero** ser avisada sobre minhas parcelas **para** não esquecer de pagar, e para a vendedora não precisar cobrar.
- Recebo uma notificação no celular no dia anterior ao vencimento e no próprio dia.
- Se a parcela atrasar, recebo um aviso no dia seguinte ao vencimento, **repetido a cada 2 dias** até ela ser paga.

### US23 — Aviso de que chegou a minha vez
**Como** compradora na fila, **quero** ser avisada quando o item passar para mim **para** iniciar a negociação a tempo.

### US24 — Avisos da negociação
**Como** vendedora, **quero** ser avisada quando receber um "Quero" ou uma proposta **para** responder rápido.
- A compradora é avisada quando a vendedora aceita ou recusa a proposta.
