Feature: Fazer a reserva de um quarto de hotel

AS um usuário do sistema
I WANT TO ver os hotéis com quartos disponíveis na cidade desejada
SO THAT eu possa escolher o que mais me agrade
AND fazer a reserva deste quarto

Scenario: Usuário tenta reservar um quarto num horário disponível
GIVEN o usuário já realizou login
AND já selecionou uma cidade
AND já selecionou um hotel
AND está na área "Quartos"
AND ele seleciona um quarto
AND ele seleciona um horário no qual o quarto está disponível
WHEN o usuário confirma sua intenção de reservar o quarto naquele horário
THEN a reserva é realizada com sucesso
AND a mensagem "Reserva realizada com sucesso!" aparece na tela
AND o usuário é redirecionado para a página "reservas"

Scenario: Usuário tenta reservar um quarto num horário indisponível
GIVEN o usuário já realizou login
AND já selecionou uma cidade
AND já selecionou um hotel
AND está na área "Quartos"
AND ele seleciona um quarto
WHEN ele seleciona um horário no qual o quarto está indisponível
THEN é exibida a mensagem "Esse horário está indisponível."
AND o usuário volta para a área "Quartos"

Scenario: Usuário tenta reservar um quarto sem ter realizado login na plataforma
GIVEN o usuário não realizou login
AND já selecionou uma cidade
AND já selecionou um hotel
AND está na área "Quartos"
AND ele seleciona um quarto
WHEN ele seleciona um horário no qual o quarto está disponível
THEN é exibida a mensagem "É necessário estar cadastrado para fazer uma reserva."
AND o usuário é direcionado para a área "Login"

Scenario: Usuário tenta reservar um quarto no qual não há horários disponíveis
GIVEN o usuário já realizou login
AND já selecionou uma cidade
AND já selecionou um hotel
AND está na área "Quartos"
WHEN ele seleciona um quarto sem horários disponíveis
THEN é exibida a mensagem "Esse quarto não tem horários disponíveis."
AND o usuário volta para a área "Quartos"