
--
-- Despejando dados para a tabela `funcionario`
--

INSERT INTO `Funcionario` (`id`, `nome`, `email`, `senha`, `tipo_usuario`) VALUES
(1, 'Josué da Silva Oliveira', 'josue@gmail.com', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 1),
(2, 'Marcos Antônio da Silva', 'tonincouveflor@gmail.com', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 1);

-- --------------------------------------------------------

--
-- Despejando dados para a tabela `tecnico`
--

INSERT INTO `Tecnico` (`id`, `id_funcionario`, `ativo`) VALUES
(1, 1, 1),
(2, 2, 1);

-- --------------------------------------------------------

--
-- Despejando dados para a tabela `endereco`
--

INSERT INTO `Endereco` (`cep`, `rua`, `bairro`, `cidade`) VALUES
('10001000', 'Avenida do Neymar', 'Vila-sésamo', 'Caieiras');

-- --------------------------------------------------------

--
-- Despejando dados para a tabela `residencial`
--

INSERT INTO `Residencial` (`id`, `cep`, `numero`) VALUES
(1, '10001000', '12');

-- --------------------------------------------------------

--
-- Despejando dados para a tabela `casa`
--

INSERT INTO `Casa` (`id`, `id_residencial`, `interdicao`, `complemento`) VALUES
(1, 1, 1, 'Frente');

-- --------------------------------------------------------

--
-- Despejando dados para a tabela `civil`
--

INSERT INTO `Civil` (`id`, `id_residencial`, `nome`, `email`, `senha`, `cpf`, `celular`, `telefone`) VALUES
(1, NULL, 'Andressa da SIlva de Souza', 'andrelinda@hotmail.com', '$2y$12$FcOF/OtNszR79kikx8mCv.aEDz5MhFde6yHDdMOsBVmr95hLrAoWm', '94830574934', '11910001000', '1110001000'),
(2, NULL, 'Márcia de Souza Gonçalves', 'donadosgatos@email.com', '$2y$12$A7ev0aMN52yw6vfgZrjUKuGPqMiJM2WxbTfS29xpTbPBl96c8uCym', '28495320185', '11920002000', '1120002000'),
(3, NULL, 'Douglas de Souza Luiz Conceição', 'douglasluiz@gmail.com', '$2y$12$lMDfrQWLnSCGIhHGcFBXNOQNNB.DuarHbX/Z0vTUdDX6kC8BrOGYe', '29584376405', '11930003000', '1130003000'),
(4, 1, 'Neymar Júnior', 'neymaroficialconfia@gmail.com', '$2y$12$wgdN7jNgJMRG8NNFCs9ki.SW.moxUBKyNpmRRrJvjbwBf.UmayIne', '75483957423', '11940004000', '1140004000');

-- --------------------------------------------------------

--
-- Despejando dados para a tabela `ocorrencia`
--

INSERT INTO `Ocorrencia` (`id`, `id_atendente`, `id_tecnico`, `id_civil`, `id_residencial`, `acionamento`, `relato_civil`, `num_casas`, `aprovado`, `encerrado`, `data_ocorrencia`) VALUES
(1, NULL, 1, 4, 1, 'telefone', 'Caiu um barranco aqui no meu quintal, me ajuda, minha casa é de madeira', 1, 1, 1, '2023-09-18 02:13:57'),
(2, 1, NULL, 3, 1, 'telefone', 'Ta complicado meu amigo', 1, 0, 0, '2023-09-18 02:13:57');

-- --------------------------------------------------------

--
-- Despejando dados para a tabela `relatorio`
--

INSERT INTO `Relatorio` (`id`, `id_ocorrencia`, `id_casa`, `gravidade`, `relatorio`, `encaminhamento`, `memorando`, `oficio`, `processo`, `assunto`, `observacoes`, `area_afetada`, `tipo_construcao`, `tipo_talude`, `vegetacao`, `situacao_vitimas`, `danos_materiais`, `interdicao`, `data_geracao`, `data_atendimento`) VALUES
(1, 1, 1, 1, 'E isso é tudo pessoal', 'nenhum', 'none', 'nope', 'nothing', 'nada', 'nill', 1, 2, 3, 4, 5, 0, 0, '2023-09-18 19:15:15', '2023-09-18 19:15:15');

-- --------------------------------------------------------

--
-- Dumping data for table `dadosdavistoria`
--

INSERT INTO `DadosDaVistoria` (`id`, `id_relatorio`, `desmoronamento`, `deslizamento`, `esgoto_escoamento`, `erosao`, `inundacao`, `incendio`, `arvores`, `infiltracao_trinca`, `judicial`, `monitoramento`, `transito`, `outros`) VALUES
(1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 'Outrora');

-- --------------------------------------------------------

--
-- Despejando dados para a tabela `afetados`
--

INSERT INTO `Afetados` (`id`, `id_relatorio`, `adultos`, `criancas`, `idosos`, `especiais`, `mortos`, `feridos`, `enfermos`) VALUES
(1, 1, 1, 2, 3, 4, 5, 6, 7);

-- --------------------------------------------------------

--
-- Despejando dados para a tabela `animal`
--

INSERT INTO `Animal` (`id`, `id_relatorio`, `caes`, `gatos`, `aves`, `equinos`) VALUES
(1, 1, 1, 2, 3, 4);

-- --------------------------------------------------------

--
-- Despejando dados para a tabela `foto`
--

INSERT INTO `Foto` (`id`, `id_relatorio`, `codificado`) VALUES
(1, 1, 'data:image/webp;base64,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');

-- --------------------------------------------------------

--
-- Dumping data for table `cargo`
--

INSERT INTO `Cargo` (`id`, `nome_cargo`) VALUES
(1, 'Administrador'),
(2, 'Inspetora');

-- --------------------------------------------------------

--
-- Dumping data for table `secretaria`
--

INSERT INTO `Secretaria` (`id`, `nome_secretaria`) VALUES
(1, 'Educação'),
(2, 'Esporte'),
(3, 'Governamental');

-- --------------------------------------------------------

--
-- Dumping data for table `secretario`
--

INSERT INTO `Secretario` (`id`, `id_secretaria`, `id_cargo`, `nome_secretario`) VALUES
(1, 1, 1, 'José Bonifácio da Silva'),
(2, 1, 2, 'Alice de Souza Conceição');

-- --------------------------------------------------------

--
-- Dumping data for table `memo`
--

INSERT INTO `Memo` (`id`, `id_relatorio`, `id_secretaria`, `data_memo`, `status_memo`, `setor`, `processo`) VALUES
(1, 1, 1, '2023-10-12 06:03:53', 'Status 1', 'industrial', 'Primário');

-- --------------------------------------------------------

--
-- Dumping data for table `fluviometro`
--

INSERT INTO `Fluviometro` (`id`, `cep`, `latitude`, `longitude`) VALUES
(1, '10001000', 15.000, 19.000);

-- --------------------------------------------------------

--
-- Dumping data for table `pluviometro`
--

INSERT INTO `Pluviometro` (`id`, `cep`, `latitude`, `longitude`) VALUES
(1, '10001000', 15.000, 17.000);

-- --------------------------------------------------------

--
-- Dumping data for table `nivelrio`
--

INSERT INTO `NivelRio` (`id`, `id_fluviometro`, `nivel_rio`, `data_diario`) VALUES
(1, 1, 5.12, '2023-10-05 08:04:09');

-- --------------------------------------------------------

--
-- Dumping data for table `nivelchuva`
--

INSERT INTO `NivelChuva` (`id`, `id_pluviometro`, `chuva_em_mm`, `data_chuva`) VALUES
(1, 1, 2.75, '2023-10-01 08:11:58');

