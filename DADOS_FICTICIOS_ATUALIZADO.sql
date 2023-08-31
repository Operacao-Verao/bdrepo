use BDDEFESACIVIL;
insert into Funcionario (nome, email, senha, tipo_usuario) values
						('João Porto', 'joao@google.com', '123456', 1),
                        ('Gabriel Soares', 'gabrielsoares@google.com', '$2a$12$WXuPqbwwNvIOSm7Qng6fN.OMepGhWwZzhuWbEaCewn9aMreiIx18i', 1),
                        ('Cinthia Silva', 'cinthiasilva@gmail.com', '$2a$12$ZbGmz9btwcNUV1eIaN3JJeLOD66.PC16u4N88g6X.sZBX0sVIlDYi', 1),
                        ('Malcolm Mello', 'malcolm@outlook.com', '$2a$12$T.QUot.HLos49ESA32KQxeoyd1hMVgYGnLe.5DeZk89NN8b.78kYK', 1),
                        ('Gustavo Ruiz', 'gustavo@google.com', '$2a$12$Dvrl5/fBrohTvMJPmnECnOP2DznnJ2lCuBsNspmS20LoEo.DK1/SC', 1),
                        ('Erick Oliveira', 'erickoliveira@bol.com', '$2a$12$23PgaDiomT7sS3l3XKCAMu2WMJ/yZR2C6BT1cVNsl64LaWR7DZ/4q', 1),
                        ('Samantha Silva', 'samantha@google.com', '$2a$12$MJ/BgCXe/u1Iykp2Ip12veGgPnfgca/qkyVoEktd51qWWisMLGFO6', 2);	
                        
insert into Gestor(id_funcionario) values
				  (7);
                  
insert into Tecnico (id_funcionario, ativo) values
					(2, true),
                    (3, true),
                    (5, true);  
                  
insert into Endereco (cep, rua, bairro, cidade)values
					 ('07851120','avenida sete de setembro', 'Centro', 'Franco da Rocha'),
					 ('07851115','avenida Brasil Nº 300', 'Rute', 'São Paulo'),
					 ('07985144 ','Rua Paulistana', 'Centro', 'Caieiras');

insert into Casa (cep, numero, complemento) values
				 ('07985144', '300', 'Casa dos fundos');
                     
insert into Civil (cep, nome, email, senha, cpf, celular, telefone) values
				  ('07851120','Joana Maria', 'Joanajoaninha@gmail.com.br' ,'12345678','21345644452','11958526266','44448874'),
				  ('07985144','Caroline Souza', 'carolinesouza.com.br' ,'12345678','33333344452','11958526341','44445566');   
                 
insert into Ocorrencia (id_tecnico, id_civil, acionamento, relato_civil, num_casas, aprovado, data_ocorrencia) VALUES
						(1,2, 'Testando acionamento','Casa do vizinho está desbarrancando na minha piscina', 1,1, '2018/09/02');                 
                 
insert into Relatorio (id_ocorrencia, id_casa,  gravidade, relatorio,  encaminhamento, memorando, oficio, processo, assunto, observacoes,
			area_afetada, tipo_construcao, tipo_talude, Vegetacao, situacao_vitimas, interdicao, danos_materiais, data_geracao, data_atendimento) 
            values
            (1,1, 'leve','Foi encaminhado tecnico que fez a vistoria e declarou interdição do local','Encaminhado para a assistente social','Teste memorando',
            'Teste Oficio', 'Teste Processo', 'Teste assunto','Vistoriado Não houve mortes', 'Quintal', 'Alvenaria','Natural','Teste vegetação','2','2','1', '2018/09/02', '2018/09/09');
        
INSERT INTO Foto (id_relatorio, codificado) values
				 (1, 'Testando codificado');
                       
insert into Afetados (id_relatorio, adultos, criancas, idosos, especiais, mortos, feridos, enfermos) values
				     (1,2,4,0,0,0,0,0);
                     
insert into Animal (id_relatorio, caes, gatos, aves, equinos) values
				    (1,1,1,0,0);
                    
insert into DadosDaVistoria(id_relatorio, desmoronamento, deslizamento, esgoto_escoamento, erosao, inundacao, incendio, arvores, 
                            infiltracao_trinca, judicial, monitoramento, transito, outros ) values
                            (1,1,1,0,0,0,0,0,1,0,1,0,0);
                            
insert into Secretaria (nome_secretaria) values
						('Secretaria nacional de Habitação'),      
						('Secretaria nacional de Proteção e Defesa Civil') ,     
						('Secretaria Executiva'),      
						('Secretaria nacional de Saneamento') ;    
                       
insert into Cargo(nome_cargo) values
				 ('Gestão'),
                 ('Administração'),
                 ('Advocacia'),
                 ('Técnico'),
                 ('Ajudante Geral');
                 
                 
insert into Secretario (id_secretaria, id_cargo, nome_secretario) values
					   (1,4,'Bruno de Arruda'),
					   (2,1,'João Mendes'),
					   (3,3,'Mariana Costa');
                    
                    
insert into Memo (id_relatorio, id_secretaria, data_memo, status_memo, processo ) values
                 (1,2,'2018/09/02','Aprovado','1234567890');
                 
                 
insert into LocalAjuda(cep, tipo, conteudo) values
					   ('07851115', 'Psicológico', 'Pessoa esta com crise de ansiedade e choro'),
					   ('07985144 ', 'Assistente Social', 'Pessoa perdeu tudo em um desastre natural'),
					   ('07851115', 'Médico', 'Pessoa ferida');  
                       
insert into pluviometro (cep, latitude, longitude)  values
						('07851115', '600.2', '8000.3');   
                        
insert into Fluviometro (cep, latitude, longitude)  values
						('07985144', '600.2', '8000.3');
                        
insert into AlertaChuva (id_pluviometro, status_chuva, data_chuva)  values
						('1', 'há mais de tres dias de chuvas intensa.', '2023/05/02');    
                        
insert into NivelChuva (id_pluviometro, chuva_em_mm, data_chuva)  values
						('1', '6.5', '2023/05/02');   
                        
insert into NivelRio (id_fluviometro, nivel_rio, data_diario)  values
						('2', '6.8', '2023/10/12');   
                        
insert into AlertaRio (id_fluviometro, status_rio, data_alerta_rio)  values
						('2', 'Acima do normal', '2023/03/03');