use dbSprintPI;

insert into tbEmpresa values
	(null, 'Vacinas Confiaveis', '71.471.231/0001-21', 'Saúde','(86) 2132-2124', 'VacConfiaveis@gmail.com', 'Rua Das Graças', '71', 'Parque Guaianases', 'São Paulo', ''),
    (null, 'Vidas Saudaveis', '97.221.993/0001-63', 'Saúde', '(79) 2277-7735', 'vidasaudaveis@gmail.com', 'Rua Haddock lobo', '8425', 'Jardim Paulista', 'São Paulo', ''),
    (null, 'Vic Soluções', '13.016.431/0001-98', 'Sáude', '(67) 3398-8498', 'vicsolucoes@gmail.com', 'Rua da independência', '632', 'Cambuci', 'São Paulo', 'bloco F'),
    (null, 'Armazenador Vacinas', '21.216.583/0001-62', 'Sáude', '(49) 2567-6235', 'ArmVacinas@gmail.com', 'Rua da Sorte', '564', 'Tiradentes', 'São Paulo', '' ),
    (null, 'Vacinas Tech', '85.143.053/0001-14', 'Sáude', '(86) 2537-8787', 'vacstech@gmail.com', 'Rua Feliciano de Mendonça', '291', 'Guaianases', 'São Paulo', '' );

insert into tbUsuario values
	(null, 'Ricardo Vicente', '123#Asd', 'intermediario', 1),
    (null, 'Mark Zuckenberg', 'Mark@012', 'basico', 2),
    (null, 'guilherme Scarabelli', 'Gui#212', 'intermediario', 3),
    (null, 'Alan Turing', 'loveComputacao#1912', 'total', 4),
    (null, 'Ada Lovelace', 'PrimeiroAlgoritmo@1815', 'total', 5);
    
insert into tbSensor values
	(null, 'Presença', '2022-12-15', '2024-12-15','geladeira 150L'),
    (null, 'Temperatura e umidade', '2020-02-24', '2025-02-24', 'geladeira 150L');
    
insert into tbEntradaSensor values
	(null, 1 , '2022-12-16 08:00:00', 1),
    (null, 0.542, '2020-02-24 18:00:00',2);