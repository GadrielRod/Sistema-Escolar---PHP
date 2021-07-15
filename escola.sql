-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04-Nov-2020 às 23:17
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `escola`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbaluno`
--

CREATE TABLE `tbaluno` (
  `tbAlunoId` int(11) NOT NULL,
  `tbAlunoNome` varchar(100) NOT NULL,
  `tbAlunoCriacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tbAlunoStatus` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbaluno`
--

INSERT INTO `tbaluno` (`tbAlunoId`, `tbAlunoNome`, `tbAlunoCriacao`, `tbAlunoStatus`) VALUES
(3, 'Thadeus', '2020-10-30 02:50:13', 1),
(4, 'Lucas Brizola', '2020-11-04 01:58:47', 1),
(5, 'José Carlos', '2020-11-04 02:17:13', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbavaliacao`
--

CREATE TABLE `tbavaliacao` (
  `tbAvaliacaoId` int(11) NOT NULL,
  `tbAvaliacaoMatricula` int(11) NOT NULL,
  `tbAvaliacaoN1` double NOT NULL,
  `tbAvaliacaoN2` double NOT NULL,
  `tbAvaliacaoCriacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tbAvaliacaoStatus` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbavaliacao`
--

INSERT INTO `tbavaliacao` (`tbAvaliacaoId`, `tbAvaliacaoMatricula`, `tbAvaliacaoN1`, `tbAvaliacaoN2`, `tbAvaliacaoCriacao`, `tbAvaliacaoStatus`) VALUES
(3, 3, 10, 10, '2020-10-30 03:45:24', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbcurso`
--

CREATE TABLE `tbcurso` (
  `tbCursoId` int(11) NOT NULL,
  `tbCursoNome` varchar(100) NOT NULL,
  `tbCursoValor` double NOT NULL,
  `tbCursoCriacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tbCursoStatus` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbcurso`
--

INSERT INTO `tbcurso` (`tbCursoId`, `tbCursoNome`, `tbCursoValor`, `tbCursoCriacao`, `tbCursoStatus`) VALUES
(3, 'Informatica', 2000, '2020-10-30 03:08:37', 1),
(4, 'Administração', 2000, '2020-11-04 01:48:47', 1),
(5, 'Segurança do trabalho', 3000, '2020-11-04 02:16:36', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbdisciplina`
--

CREATE TABLE `tbdisciplina` (
  `tbDisciplinaId` int(11) NOT NULL,
  `tbDisciplinaNome` varchar(50) NOT NULL,
  `tbDisciplinaCriacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tbDisciplinaStatus` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbdisciplina`
--

INSERT INTO `tbdisciplina` (`tbDisciplinaId`, `tbDisciplinaNome`, `tbDisciplinaCriacao`, `tbDisciplinaStatus`) VALUES
(3, 'Informatica', '2020-10-30 02:49:54', 1),
(4, 'Banco de dados', '2020-11-04 01:51:40', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbescola`
--

CREATE TABLE `tbescola` (
  `tbEscolaId` int(11) NOT NULL,
  `tbEscolaNome` varchar(90) NOT NULL,
  `tbEscolaCriacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tbEscolaStatus` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbescola`
--

INSERT INTO `tbescola` (`tbEscolaId`, `tbEscolaNome`, `tbEscolaCriacao`, `tbEscolaStatus`) VALUES
(3, 'ESJC', '2020-10-30 02:47:51', 1),
(4, 'São Jorge', '2020-10-30 02:48:08', 1),
(5, 'Filipinas', '2020-10-30 02:48:21', 1),
(6, 'Moreira', '2020-10-30 02:48:28', 1),
(7, 'José Carlos', '2020-11-04 02:16:49', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbfinanceira`
--

CREATE TABLE `tbfinanceira` (
  `tbFinanceiraId` int(11) NOT NULL,
  `tbFinanceiraCurso` int(11) NOT NULL,
  `tbFinanceiraAluno` int(11) NOT NULL,
  `tbFinanceiraCriacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tbFinanceiraStatus` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbfinanceira`
--

INSERT INTO `tbfinanceira` (`tbFinanceiraId`, `tbFinanceiraCurso`, `tbFinanceiraAluno`, `tbFinanceiraCriacao`, `tbFinanceiraStatus`) VALUES
(3, 3, 3, '2020-10-30 03:08:45', 1),
(4, 4, 4, '2020-11-04 02:16:06', 1),
(5, 3, 5, '2020-11-04 02:17:24', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbfuncao`
--

CREATE TABLE `tbfuncao` (
  `tbFuncaoId` int(11) NOT NULL,
  `tbFuncaoNome` varchar(100) NOT NULL,
  `tbFuncaoSalario` double NOT NULL,
  `tbFuncaoCriacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tbFuncaoStatus` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbfuncao`
--

INSERT INTO `tbfuncao` (`tbFuncaoId`, `tbFuncaoNome`, `tbFuncaoSalario`, `tbFuncaoCriacao`, `tbFuncaoStatus`) VALUES
(3, 'Faxineiro', 1000, '2020-10-30 02:49:06', 1),
(4, 'Professor', 2000, '2020-10-30 02:49:17', 1),
(5, 'Pedreiro', 700, '2020-11-04 02:27:09', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbfuncionario`
--

CREATE TABLE `tbfuncionario` (
  `tbFuncionarioId` int(11) NOT NULL,
  `tbFuncionarioEscola` int(11) NOT NULL,
  `tbFuncionarioFuncao` int(11) NOT NULL,
  `tbFuncionarioNome` varchar(100) NOT NULL,
  `tbFuncionarioCriacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tbFuncionarioStatus` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbfuncionario`
--

INSERT INTO `tbfuncionario` (`tbFuncionarioId`, `tbFuncionarioEscola`, `tbFuncionarioFuncao`, `tbFuncionarioNome`, `tbFuncionarioCriacao`, `tbFuncionarioStatus`) VALUES
(3, 5, 3, 'Sergio', '2020-10-30 02:49:33', 1),
(4, 4, 4, 'Claudio', '2020-10-30 02:49:43', 1),
(5, 6, 5, 'Glauber', '2020-11-04 02:27:26', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbmatricula`
--

CREATE TABLE `tbmatricula` (
  `tbMatriculaId` int(11) NOT NULL,
  `tbMatriculaAluno` int(11) NOT NULL,
  `tbMatriculaTurma` int(11) NOT NULL,
  `tbMatriculaCriacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tbMatriculaStatus` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbmatricula`
--

INSERT INTO `tbmatricula` (`tbMatriculaId`, `tbMatriculaAluno`, `tbMatriculaTurma`, `tbMatriculaCriacao`, `tbMatriculaStatus`) VALUES
(3, 3, 3, '2020-10-30 03:44:55', 1),
(4, 4, 4, '2020-11-04 02:40:29', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbpagamentos`
--

CREATE TABLE `tbpagamentos` (
  `tbPagamentosId` int(11) NOT NULL,
  `tbPagamentosFinanceira` int(11) NOT NULL,
  `tbPagamentosValor` double NOT NULL,
  `tbPagamentosData` date NOT NULL,
  `tbPagamentosCriacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tbPagamentosStatus` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbpagamentos`
--

INSERT INTO `tbpagamentos` (`tbPagamentosId`, `tbPagamentosFinanceira`, `tbPagamentosValor`, `tbPagamentosData`, `tbPagamentosCriacao`, `tbPagamentosStatus`) VALUES
(3, 3, 100, '2020-09-23', '2020-10-30 03:09:31', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbprofessor`
--

CREATE TABLE `tbprofessor` (
  `tbProfessorId` int(11) NOT NULL,
  `tbProfessorNome` varchar(100) NOT NULL,
  `tbProfessorCriacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tbProfessorStatus` int(11) NOT NULL DEFAULT 1,
  `tbProfessorFuncao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbprofessor`
--

INSERT INTO `tbprofessor` (`tbProfessorId`, `tbProfessorNome`, `tbProfessorCriacao`, `tbProfessorStatus`, `tbProfessorFuncao`) VALUES
(3, 'Rodrigo', '2020-10-30 03:42:56', 1, 4),
(4, 'Rudinei', '2020-11-04 02:40:04', 1, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbrelsaladisc`
--

CREATE TABLE `tbrelsaladisc` (
  `tbRelSalaDiscId` int(11) NOT NULL,
  `tbRelSalaDiscSala` int(11) NOT NULL,
  `tbRelSalaDiscDisciplina` int(11) NOT NULL,
  `tbRelSalaDiscCriacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tbRelSalaDiscStatus` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbrelsaladisc`
--

INSERT INTO `tbrelsaladisc` (`tbRelSalaDiscId`, `tbRelSalaDiscSala`, `tbRelSalaDiscDisciplina`, `tbRelSalaDiscCriacao`, `tbRelSalaDiscStatus`) VALUES
(3, 4, 3, '2020-10-30 03:45:07', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbsala`
--

CREATE TABLE `tbsala` (
  `tbSalaId` int(11) NOT NULL,
  `tbSalaNome` varchar(20) NOT NULL,
  `tbSalaEscola` int(11) NOT NULL,
  `tbSalaCriacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tbSalaStatus` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbsala`
--

INSERT INTO `tbsala` (`tbSalaId`, `tbSalaNome`, `tbSalaEscola`, `tbSalaCriacao`, `tbSalaStatus`) VALUES
(3, '201', 3, '2020-10-30 02:48:41', 1),
(4, '504', 5, '2020-10-30 02:48:52', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbturma`
--

CREATE TABLE `tbturma` (
  `tbTurmaId` int(11) NOT NULL,
  `tbTurmaDisciplina` int(11) NOT NULL,
  `tbTurmaProfessor` int(11) NOT NULL,
  `tbTurmaCriacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tbTurmaStatus` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbturma`
--

INSERT INTO `tbturma` (`tbTurmaId`, `tbTurmaDisciplina`, `tbTurmaProfessor`, `tbTurmaCriacao`, `tbTurmaStatus`) VALUES
(3, 3, 3, '2020-10-30 03:43:04', 1),
(4, 4, 4, '2020-11-04 02:40:16', 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tbaluno`
--
ALTER TABLE `tbaluno`
  ADD PRIMARY KEY (`tbAlunoId`);

--
-- Índices para tabela `tbavaliacao`
--
ALTER TABLE `tbavaliacao`
  ADD PRIMARY KEY (`tbAvaliacaoId`),
  ADD KEY `tbAvaliacaoMatricula` (`tbAvaliacaoMatricula`);

--
-- Índices para tabela `tbcurso`
--
ALTER TABLE `tbcurso`
  ADD PRIMARY KEY (`tbCursoId`);

--
-- Índices para tabela `tbdisciplina`
--
ALTER TABLE `tbdisciplina`
  ADD PRIMARY KEY (`tbDisciplinaId`);

--
-- Índices para tabela `tbescola`
--
ALTER TABLE `tbescola`
  ADD PRIMARY KEY (`tbEscolaId`);

--
-- Índices para tabela `tbfinanceira`
--
ALTER TABLE `tbfinanceira`
  ADD PRIMARY KEY (`tbFinanceiraId`),
  ADD KEY `tbFinanceiraCurso` (`tbFinanceiraCurso`),
  ADD KEY `tbFinanceiraAluno` (`tbFinanceiraAluno`);

--
-- Índices para tabela `tbfuncao`
--
ALTER TABLE `tbfuncao`
  ADD PRIMARY KEY (`tbFuncaoId`);

--
-- Índices para tabela `tbfuncionario`
--
ALTER TABLE `tbfuncionario`
  ADD PRIMARY KEY (`tbFuncionarioId`),
  ADD KEY `tbFuncionarioFuncao` (`tbFuncionarioFuncao`),
  ADD KEY `tbFuncionarioEscola` (`tbFuncionarioEscola`);

--
-- Índices para tabela `tbmatricula`
--
ALTER TABLE `tbmatricula`
  ADD PRIMARY KEY (`tbMatriculaId`),
  ADD KEY `tbMatriculaAluno` (`tbMatriculaAluno`),
  ADD KEY `tbMatriculaTurma` (`tbMatriculaTurma`);

--
-- Índices para tabela `tbpagamentos`
--
ALTER TABLE `tbpagamentos`
  ADD PRIMARY KEY (`tbPagamentosId`),
  ADD KEY `tbPagamentosFinanceira` (`tbPagamentosFinanceira`);

--
-- Índices para tabela `tbprofessor`
--
ALTER TABLE `tbprofessor`
  ADD PRIMARY KEY (`tbProfessorId`),
  ADD KEY `tbProfessorFuncao` (`tbProfessorFuncao`);

--
-- Índices para tabela `tbrelsaladisc`
--
ALTER TABLE `tbrelsaladisc`
  ADD PRIMARY KEY (`tbRelSalaDiscId`),
  ADD KEY `tbRelSalaDiscSala` (`tbRelSalaDiscSala`),
  ADD KEY `tbRelSalaDiscDisciplina` (`tbRelSalaDiscDisciplina`);

--
-- Índices para tabela `tbsala`
--
ALTER TABLE `tbsala`
  ADD PRIMARY KEY (`tbSalaId`),
  ADD KEY `tbSalaEscola` (`tbSalaEscola`);

--
-- Índices para tabela `tbturma`
--
ALTER TABLE `tbturma`
  ADD PRIMARY KEY (`tbTurmaId`),
  ADD KEY `tbTurmaDisciplina` (`tbTurmaDisciplina`),
  ADD KEY `tbTurmaProfessor` (`tbTurmaProfessor`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbaluno`
--
ALTER TABLE `tbaluno`
  MODIFY `tbAlunoId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tbavaliacao`
--
ALTER TABLE `tbavaliacao`
  MODIFY `tbAvaliacaoId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tbcurso`
--
ALTER TABLE `tbcurso`
  MODIFY `tbCursoId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tbdisciplina`
--
ALTER TABLE `tbdisciplina`
  MODIFY `tbDisciplinaId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tbescola`
--
ALTER TABLE `tbescola`
  MODIFY `tbEscolaId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `tbfinanceira`
--
ALTER TABLE `tbfinanceira`
  MODIFY `tbFinanceiraId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tbfuncao`
--
ALTER TABLE `tbfuncao`
  MODIFY `tbFuncaoId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tbfuncionario`
--
ALTER TABLE `tbfuncionario`
  MODIFY `tbFuncionarioId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tbmatricula`
--
ALTER TABLE `tbmatricula`
  MODIFY `tbMatriculaId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tbpagamentos`
--
ALTER TABLE `tbpagamentos`
  MODIFY `tbPagamentosId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tbprofessor`
--
ALTER TABLE `tbprofessor`
  MODIFY `tbProfessorId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tbrelsaladisc`
--
ALTER TABLE `tbrelsaladisc`
  MODIFY `tbRelSalaDiscId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tbsala`
--
ALTER TABLE `tbsala`
  MODIFY `tbSalaId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tbturma`
--
ALTER TABLE `tbturma`
  MODIFY `tbTurmaId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tbavaliacao`
--
ALTER TABLE `tbavaliacao`
  ADD CONSTRAINT `tbavaliacao_ibfk_1` FOREIGN KEY (`tbAvaliacaoMatricula`) REFERENCES `tbmatricula` (`tbMatriculaId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `tbfinanceira`
--
ALTER TABLE `tbfinanceira`
  ADD CONSTRAINT `tbfinanceira_ibfk_1` FOREIGN KEY (`tbFinanceiraCurso`) REFERENCES `tbcurso` (`tbCursoId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbfinanceira_ibfk_2` FOREIGN KEY (`tbFinanceiraAluno`) REFERENCES `tbaluno` (`tbAlunoId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `tbfuncionario`
--
ALTER TABLE `tbfuncionario`
  ADD CONSTRAINT `tbfuncionario_ibfk_1` FOREIGN KEY (`tbFuncionarioFuncao`) REFERENCES `tbfuncao` (`tbFuncaoId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbfuncionario_ibfk_2` FOREIGN KEY (`tbFuncionarioEscola`) REFERENCES `tbescola` (`tbEscolaId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `tbmatricula`
--
ALTER TABLE `tbmatricula`
  ADD CONSTRAINT `tbmatricula_ibfk_1` FOREIGN KEY (`tbMatriculaAluno`) REFERENCES `tbaluno` (`tbAlunoId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbmatricula_ibfk_2` FOREIGN KEY (`tbMatriculaTurma`) REFERENCES `tbturma` (`tbTurmaId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `tbpagamentos`
--
ALTER TABLE `tbpagamentos`
  ADD CONSTRAINT `tbpagamentos_ibfk_1` FOREIGN KEY (`tbPagamentosFinanceira`) REFERENCES `tbfinanceira` (`tbFinanceiraId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `tbprofessor`
--
ALTER TABLE `tbprofessor`
  ADD CONSTRAINT `tbprofessor_ibfk_1` FOREIGN KEY (`tbProfessorFuncao`) REFERENCES `tbfuncao` (`tbFuncaoId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `tbrelsaladisc`
--
ALTER TABLE `tbrelsaladisc`
  ADD CONSTRAINT `tbrelsaladisc_ibfk_1` FOREIGN KEY (`tbRelSalaDiscSala`) REFERENCES `tbsala` (`tbSalaId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbrelsaladisc_ibfk_2` FOREIGN KEY (`tbRelSalaDiscDisciplina`) REFERENCES `tbdisciplina` (`tbDisciplinaId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `tbsala`
--
ALTER TABLE `tbsala`
  ADD CONSTRAINT `tbsala_ibfk_1` FOREIGN KEY (`tbSalaEscola`) REFERENCES `tbescola` (`tbEscolaId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `tbturma`
--
ALTER TABLE `tbturma`
  ADD CONSTRAINT `tbturma_ibfk_1` FOREIGN KEY (`tbTurmaDisciplina`) REFERENCES `tbdisciplina` (`tbDisciplinaId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbturma_ibfk_2` FOREIGN KEY (`tbTurmaProfessor`) REFERENCES `tbprofessor` (`tbProfessorId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
