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