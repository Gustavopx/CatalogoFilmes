
CREATE DATABASE catalogoFilmesDB;
USE catalogoFilmesDB;
DROP TABLE tb_filme;
CREATE TABLE tb_usuario (
	id_usuario		int primary key auto_increment,
    nm_usuario		varchar(200),
    ds_email		varchar(200),
    ds_senha		varchar(20)
    );
    
    CREATE TABLE tb_filme (
		id_filme		int primary key auto_increment,
        id_usuario		int,
        nm_filme		varchar(200),
        ds_sinopse		varchar(200),
        vl_avaliacao	decimal(12,2),
        dt_lancamento	date,
        bt_disponivel	boolean,
        img_filme		varchar(800),
        FOREIGN KEY (id_usuario) REFERENCES tb_usuario (id_usuario)
        );