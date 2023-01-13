CREATE TABLE `cursos` (
  `id` int PRIMARY KEY,
  `nome` varchar(100),
  `polo` varchar(50)
);

CREATE TABLE `turmas` (
  `id` int PRIMARY KEY,
  `codigo` varchar(3),
  `turno` varchar(15),
  `id_curso` varchar(5),
  `id_facilitadores` int(5)
);

CREATE TABLE `alunos` (
  `id` int PRIMARY KEY,
  `nome` varchar(100),
  `cpf` int(11),
  `endereco` varchar(175),
  `id_turmas` int(5)
);

CREATE TABLE `facilitadores` (
  `id` int PRIMARY KEY,
  `nome` varchar(100),
  `cpf` int(11),
  `frente` varchar(4)
);

CREATE TABLE `materias` (
  `id` int PRIMARY KEY,
  `frente` varchar(4),
  `modulo` int(2),
  `id_facilitadores` int(5)
);

CREATE TABLE `projetos` (
  `id` int PRIMARY KEY,
  `modulo` int(2),
  `id_alunos` int(5)
);

ALTER TABLE `cursos` ADD FOREIGN KEY (`id`) REFERENCES `turmas` (`id_curso`);

ALTER TABLE `facilitadores` ADD FOREIGN KEY (`id`) REFERENCES `turmas` (`id_facilitadores`);

ALTER TABLE `turmas` ADD FOREIGN KEY (`id`) REFERENCES `alunos` (`id_turmas`);

ALTER TABLE `facilitadores` ADD FOREIGN KEY (`id`) REFERENCES `materias` (`id_facilitadores`);

ALTER TABLE `alunos` ADD FOREIGN KEY (`id`) REFERENCES `projetos` (`id_alunos`);
