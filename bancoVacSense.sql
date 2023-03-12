CREATE DATABASE dbSprintPI;

USE dbSprintPI;

CREATE TABLE tbEmpresa (
  idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
  nomeEmpresa VARCHAR (60) NOT NULL,
  cnpjEmpresa CHAR (14) NOT NULL,
  segmento VARCHAR (20) NOT NULL,
  telEmpresa CHAR (10) NOT NULL,
  emailEmpresa VARCHAR (55) NOT NULL,
  ruaEmpresa VARCHAR  (150) NOT NULL,
  numeroEndereco VARCHAR (5) NOT NULL,
  bairroEndereco VARCHAR (100),
  cidadeEndereco VARCHAR (100) NOT NULL,
  complemento VARCHAR (20)
);

CREATE TABLE tbUsuario (
  idUsuario INT PRIMARY KEY AUTO_INCREMENT,
  nomeUsuario VARCHAR (60) NOT NULL,
  senhaUsuario VARCHAR (60) NOT NULL,
  permissoes CHAR  (13) NOT NULL,
  idEmpresa INT
);

 
CREATE TABLE tbSensor (
	idSensor INT PRIMARY KEY AUTO_INCREMENT,
	tipoSensor CHAR (21) NOT NULL,
	dtInstalacao DATE NOT NULL, 
  dtValidade DATE NOT NULL,
 -- em qual geladeira o sensor foi instalado (???) 
	localInstalado VARCHAR (100) NOT NULL
);



CREATE TABLE tbEntradaSensor (
  idEntrada INT PRIMARY KEY AUTO_INCREMENT,
  valorEntrada FLOAT NOT NULL, -- No caso do sensor de presença será 0 ou 1
  dtEntrada DATETIME NOT NULL,
  idSensor INT
);



-- Permissão basica: Apenas visualização dos dados;
-- Permissão intermediario: Visualização dos dados, permissão para alterar algumas configurações;
-- Permissão total: Permissão para realizar todas as ações dentro do sistema, incluindo criar novos usuarios dentro da empresa.
ALTER TABLE tbusuario
	ADD  CONSTRAINT chkPermissao CHECK (permissoes IN ('basico', 'intermediario', 'total'));
   
-- Diferenciar os sensores entre o sensor de presença ou o de temperatura e umidade
ALTER TABLE tbSensor
	ADD CONSTRAINT chkTipo CHECK (tipoSensor IN ('presenca', 'temperatura e umidade'));
