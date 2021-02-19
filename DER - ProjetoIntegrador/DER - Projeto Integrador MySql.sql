CREATE TABLE `tb_postagem` (
	`Id` INT(30) NOT NULL,
	`Titulo` varchar(255) NOT NULL,
	`Conteudo` varchar(255) NOT NULL,
	`Referencia` varchar(255) NOT NULL,
	`Data` DATETIME(10) NOT NULL,
	`id_tema` INT(30) NOT NULL,
	`id_usuario` INT(30) NOT NULL,
	PRIMARY KEY (`Id`)
);

CREATE TABLE `tb_tema` (
	`id` INT(30) NOT NULL,
	`Nome` varchar(255) NOT NULL,
	`Descrição` varchar(255) NOT NULL,
	`Status` BOOLEAN(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tb_usuario` (
	`id` INT(30) NOT NULL,
	`nome_completo` varchar(255) NOT NULL,
	`e-mail` varchar(255) NOT NULL,
	`senha` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `tb_postagem` ADD CONSTRAINT `tb_postagem_fk0` FOREIGN KEY (`Titulo`) REFERENCES `tb_tema`(``);

ALTER TABLE `tb_postagem` ADD CONSTRAINT `tb_postagem_fk1` FOREIGN KEY (`Conteudo`) REFERENCES `tb_tema`(``);

ALTER TABLE `tb_postagem` ADD CONSTRAINT `tb_postagem_fk2` FOREIGN KEY (`Referencia`) REFERENCES `tb_tema`(``);

ALTER TABLE `tb_postagem` ADD CONSTRAINT `tb_postagem_fk3` FOREIGN KEY (`Data`) REFERENCES `tb_tema`(``);

ALTER TABLE `tb_postagem` ADD CONSTRAINT `tb_postagem_fk4` FOREIGN KEY (`id_tema`) REFERENCES `tb_tema`(`id`);

ALTER TABLE `tb_postagem` ADD CONSTRAINT `tb_postagem_fk5` FOREIGN KEY (`id_usuario`) REFERENCES `tb_usuario`(`id`);

