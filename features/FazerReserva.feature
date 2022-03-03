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