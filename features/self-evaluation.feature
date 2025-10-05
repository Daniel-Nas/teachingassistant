Scenario1: Disparo automático de solicitação de autoavaliação ao encerrar o semestre
Given todos os módulos da disciplina foram concluídos
And o semestre foi encerrado pelo sistema acadêmico
When o sistema identificar o status "Semestre encerrado"
Then uma solicitação de autoavaliação é gerada para cada aluno matriculado
And registrar o disparo no histórico de solicitações
And disponibilizar o status inicial "Não lida" no dashboard do professor

Scenario2: Personalização da mensagem de solicitação
Given estou logada como usuário “Coord”
And estou na Página de “solicitação de autoavaliação”
When edito o texto padrão adicionando informações extras sobre prazos
And envio a solicitação para os alunos
Then cada aluno recebeu a mensagem com o texto customizado

Scenario3: Professor visualiza o acompanhamento das autoavaliações
Given Estou logado como usuário “Professor” com login “Prof1”
And estou na página principal
When Página de Acompanhamento for acessada
And “Pedro” está com status "Não lida" 
And “Rafael” está com status "Respondida"
And "João" está com Status "Não lida"
Then é visualizada a listagem de alunos com seus respectivos status
And a porcentagem de alunos que já responderam a autoavaliação

Scenario4: Professor realiza reenvio manual de solicitação de autoavaliação
Given estou logado como usuário “Professor” com login “Prof1”
And vejo que o aluno “Pedro” recebeu uma solicitação de autoavaliação anterior
When o professor selecionar a opção “Reenviar solicitação”
Then é visualizado o texto “uma nova notificação com o mesmo conteúdo padrão enviada pelo sistema”.
And posso ver a tag do aluno “Pedro” como “Solicitação reenviada”
