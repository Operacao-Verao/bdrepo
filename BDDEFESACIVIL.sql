create database BDDEFESACIVIL;

use BDDEFESACIVIL;


create table Funcionario(
	id int auto_increment primary key, 
	nome varchar (100) not null,
	email varchar (100) unique not null,
	senha varchar (70) not null,
	tipo_usuario int not null
);

create table Registro(
	id int auto_increment primary key,
	id_funcionario int not null,
	foreign key (id_funcionario) references Funcionario (id),
	acao int not null,
	descricao varchar(355) not null,
	momento datetime not null
);

create table Gestor(
	id int auto_increment primary key,
	id_funcionario int not null unique, 
	foreign Key (id_funcionario) references Funcionario (id)
);

create table Tecnico(
	id int auto_increment primary key,
	id_funcionario int not null unique, 
	foreign Key (id_funcionario) references Funcionario (id),
	ativo bool not null
);

create table ServiceWorkerData (
	id int auto_increment primary key,
	sw_endpoint varchar(250) not null,
	auth varchar(40) not null,
	p256dh varchar(110) not null,
	id_gestor int not null,
	foreign key (id_gestor) references Gestor (id)
);

create table Comunicado(
	id int auto_increment primary key,
	id_gestor int not null,
	foreign key (id_gestor) references Gestor (id),
	conteudo varchar(355) not null
);

create table Endereco(
	cep char (8) not null primary key,
	rua varchar (155) not null,
	bairro varchar (100) not null,
	cidade varchar (70)
);

create table Residencial(
	id int auto_increment primary key,
	cep char (8) not null,
	foreign key (cep) references Endereco (cep),
	numero varchar (10) unique not null
);

create table Casa(
	id int auto_increment primary key,
	id_residencial int not null,
	foreign key (id_residencial) references Residencial (id),
	interdicao int not null,
	complemento varchar (50)
);

create table Civil(
	id int auto_increment primary key not null,
	id_residencial int null,
	foreign key (id_residencial) references Residencial (id),
	nome varchar (100) not null,
	email varchar (70),
	senha varchar (70) not null,
	cpf char (11) unique not null,
	celular char (11) not null,
	telefone char (10) null
);

create table Ocorrencia(
	id int auto_increment primary key,
	id_tecnico int null,
	foreign key (id_tecnico) references Tecnico (id),
	id_civil int not null,
	foreign key (id_civil) references Civil (id),
	id_residencial int not null,
	foreign key (id_residencial) references Residencial (id),
	acionamento varchar (100) not null,
	relato_civil varchar (2047) not null,
	num_casas int not null,
	aprovado boolean not null,
	encerrado boolean not null,
	data_ocorrencia datetime not null
);

create table Relatorio(
	id int auto_increment primary key,
	id_ocorrencia int not null,
	foreign key (id_ocorrencia) references Ocorrencia (id),
	id_casa int not null,
	foreign key (id_casa) references Casa (id),
	gravidade int not null,
	relatorio varchar (2047) not null,
	encaminhamento varchar (155) not null,
	memorando varchar (100) not null,
	oficio varchar (100) not null,
	processo varchar (100) not null,
	assunto varchar (200) not null,
	observacoes varchar (2047) not null,
	area_afetada int not null,
	tipo_construcao int not null,
	tipo_talude int not null,
	vegetacao  int not null,
	situacao_vitimas int not null, -- Desabrigados, desalojados
	interdicao int not null,
	danos_materiais boolean not null,
	data_geracao datetime not null,
	data_atendimento datetime not null
);

create table Foto(
	id int primary key auto_increment,
	id_relatorio int not null,
	foreign key (id_relatorio) references Relatorio (id),
	codificado longtext not null
);

create table Afetados(
	id int primary key auto_increment,
	id_relatorio int not null unique,
	foreign key (id_relatorio) references Relatorio (id),
	adultos int,
	criancas int,
	idosos int, 
	especiais int,
	mortos int,
	feridos int,
	enfermos int
);

create table Animal(
	id int auto_increment primary key,
	id_relatorio int not null unique,
	foreign key (id_relatorio) references Relatorio (id),
	caes int,
	gatos int,
	aves int,
	equinos int
);

create table DadosDaVistoria(
	id int auto_increment primary key,
	id_relatorio int not null unique,
	foreign key (id_relatorio) references Relatorio (id),
	desmoronamento boolean,
	deslizamento boolean,
	esgoto_escoamento boolean,
	erosao boolean,
	inundacao boolean,
	incendio boolean,
	arvores boolean,
	infiltracao_trinca boolean,
	judicial boolean,
	monitoramento boolean,
	transito boolean,
	outros  varchar (355)
);

create table Secretaria(
	id int auto_increment primary key,
	nome_secretaria varchar (100) not null
);

create table Cargo(
	id int auto_increment primary key,
	nome_cargo varchar (100) not null
);

create table Secretario(
	id int auto_increment primary key,
	id_secretaria int not null,
	foreign key (id_secretaria) references Secretaria (id),
	id_cargo int not null,
	foreign key (id_cargo) references Cargo (id),
	nome_secretario varchar (100) not null
);

create table Memo(
	id int auto_increment primary key,
	id_relatorio int not null unique,
	foreign key (id_relatorio) references Relatorio (id),
	id_secretaria int not null,
	foreign key (id_secretaria) references Secretaria (id),
	data_memo datetime not null,
	status_memo varchar (355) not null,
	setor varchar(75) not null,
	processo char (10)
);

create table LocalAjuda(
	id int auto_increment primary key,
	cep char(8) not null,
	foreign key (cep) references Endereco (cep),
	tipo varchar (100),
	conteudo varchar (355)
);

create table Pluviometro(
	id int auto_increment primary key,
	cep char (8) not null,
	foreign key (cep) references Endereco (cep),
	latitude decimal (8,3) not null,
	longitude decimal (8,3)
);

create table Fluviometro(
	id int auto_increment primary key,
	cep char (8),
	foreign key (cep) references Endereco (cep),
	latitude decimal (8,3),
	longitude decimal (8,3)
);

create table AlertaChuva(
	id int auto_increment primary key,
	id_pluviometro int,
	foreign key (id_pluviometro) references Pluviometro (id),
	status_chuva varchar (50) not null,
	data_chuva datetime not null
);

create table NivelChuva(
	id int auto_increment primary key,
	id_pluviometro int,
	foreign key (id_pluviometro) references Pluviometro (id),
	chuva_em_mm decimal (5,2),
	data_chuva datetime
);

create table NivelRio(
	id int auto_increment primary key,
	id_fluviometro int,
	foreign key (id_fluviometro) references Fluviometro (id),
	nivel_rio decimal (5,2),
	data_diario datetime
);

create table AlertaRio(
	id int auto_increment primary key,
	id_fluviometro int,
	foreign key (id_fluviometro) references Fluviometro (id),
	status_rio varchar (50),
	data_alerta_rio datetime not null
);

