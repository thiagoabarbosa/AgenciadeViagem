Cadastro/Login de médico (x)
Cadastrar pacientes em fila de espera
Marcação de exames	
Reservar salas de exames (checar e evitar conflito de reserva)	
Gerar relatórios de desempenho dos médicos

Feature: realizar o Cadastro ou Login de médico

    AS Um usuario do sistema (médico)
    I WANT TO cadastrar e/ou efetuar o login no sistema
    SO THAT Eu possa acessar o sistema e ser capaz de efetuar operações

Scenario: Cadastrar um médico
GIVEN o médico "Igor Xavier" com CRM "11.825" está na área "cadastro de médico"
AND ele fornece seu nome, "Igor Xavier", CPF: "095104875-68", CRM: "11.825", e-mail: "igor@gmail.com", telefone: "8198666-1006" e senha: "eusoudoutor123"
AND CPF: "095104875-68" não constava no banco de dados
WHEN o médico finaliza seu cadastro
THEN o cadastro do médico é realizado com sucesso
AND a mensagem "Cadastro realizado com sucesso!" aparece na tela
AND o médico é direcionado para a tela de login


Scenario: Cadastro de um usuário que não preencheu todos os campos
GIVEN o usuário Elton Gomes com CPF: "104645253-61" está na área "cadastro de médico"
AND Ele fornece seu nome, "Elton Gomes", CPF: "104645253-61", CRM: "10.802", e-mail: "eltongomes@gmail.com", senha: "heylookatme", mas não cadastrou telefone
WHEN o usuario tentar finalizar seu cadastro
THEN o cadastro do usuário não é realizdo com sucesso
AND a mensagem "Há campos que ainda não foram preenchidos!"
AND o usuário retorna a área de cadastro


Scenario: Cadastro de um usuário com CPF já cadastrado no sistema
GIVEN A usuária "Rose Santos", já está cadastrada com seu nome e CPF: "123584693-85", está na área "cadastro de médico"
AND A usuária fornece seu nome, "Rose Santos", CPF: "123584693-85", CRM: "11.203", e-mail: "rose_htinha@yahoo.com.br", telefone: "8196966969, senha: "adorosk8" 
WHEN a usuária tentar finalizar seu cadastro
THEN o cadastro da usuária não é realizado com sucesso
AND a mensagem "CPF já cadastrado!"
AND a usuária retorna a área "cadastro de médico"

Scenario: Login bem sucedido
GIVEN o usuário "Igor Xavier" está na "área de login"
AND o usuário "Igor Xavier" fornece seu CPF: "095104875-68" e senha: "eusoudoutor123"
WHEN o usuário "Igor Xavier" realiza o login
THEN o login é realizado com sucesso
AND o usuário "Igor Xavier" entra na "área do médico"

Scenario: Dados do login incorretos
GIVEN o usuário "Igor Xavier" está na "área de login"
AND o usuário "Igor Xavier" fornece seu CPF: "095104875-68" e senha: "drehquemtemdoutorado123"
WHEN o usuário "Igor Xavier" realiza o login
THEN o login NÃO é realizado com sucesso
AND a mensagem "Dados incorretos!"
AND o usuário retorna a "área de "login"


Scenario: Login do login incompletos
GIVEN o usuário "Igor Xavier" está na "área de login"
AND o usuário "Igor Xavier" fornece seu CPF: "095104875-68" porém não fornece sua senha
WHEN o usuário "Igor Xavier" realiza o login
THEN o login NÃO é realizado com sucesso
AND a mensagem "Existem campos não preenchidos"
AND o usuário retorna a "área de "login"


