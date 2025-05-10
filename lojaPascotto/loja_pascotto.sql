CREATE DATABASE loja_pascotto;
USE loja_pascotto;

CREATE TABLE cliente(
id_cliente INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(250),
data_nasc VARCHAR(27),
cpf VARCHAR(30),
email VARCHAR(250),
telefone VARCHAR(44),
endereco VARCHAR(250),
complemento VARCHAR(100)
);

CREATE TABLE produtos(
id_produtos INT AUTO_INCREMENT PRIMARY KEY,
nome_produto VARCHAR(250),
preco DECIMAL(10,2),
qtd_estoque INT,
cod_barras VARCHAR(60),
data_validade VARCHAR(60)
);


CREATE TABLE pedidos(
id_pedidos INT AUTO_INCREMENT PRIMARY KEY,
forma_pagamento VARCHAR(100),
data_envio VARCHAR(60),
id_clientes INT,
data_entrega VARCHAR(60),
FOREIGN KEY (id_clientes) REFERENCES cliente(id_cliente)
);

CREATE TABLE itensPedidos(
iditens_pedido INT AUTO_INCREMENT PRIMARY KEY,
id_pedido INT,
preco_total DECIMAL(10,2),
id_produtos INT,
qtd_itens INT,
FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedidos),
FOREIGN KEY (id_produtos) REFERENCES produtos(id_produtos)
);

CREATE TABLE funcionarios(
id_funcionarioS INT AUTO_INCREMENT PRIMARY KEY,
cpf VARCHAR(30) NOT NULL,
nome VARCHAR(250) NOT NULL,
email VARCHAR(250) NOT NULL,
id_cargo INT NOT NULL,
data_nasc VARCHAR(250),
FOREIGN KEY (id_cargo) REFERENCES cargo(id_cargos)
);

CREATE TABLE cargo(

id_cargos INT AUTO_INCREMENT PRIMARY KEY,
departamento VARCHAR(250)
);

INSERT INTO cliente (nome,data_nasc,cpf,email,telefone,endereco,complemento) value
('Jefferson Aristides','21-09-2005','10243908048','jefferson@gmail.com','11924838439','rua nazir',' casa'),
('Veronica Deise ','09-10-1988','390284203948','veronica@gmail.com','1192843489','rua cotoxo','AP'),
('Richard Oiveira ','12-03-2000','7343849298374','richard@gmail.com','1134793743','rua frei claude','casa'),
('Levi Sousa','31-12-2003','07347137123','levi@gmail.com','11234545233','rua maria','AP'),
('Thiago Silva','06-05-1978','873897349127','thiago@gmail.com','119374374893','rua assis','casa'),
('Thais Neves ','05-06-1999','147384091470','thais@gmail.com','11873498734','rua machado','condominio'),
('Marcia Lima','10-05-1987','90852038423094','marcia@gmail.com','11374340327','rua matheus grou','AP');




INSERT INTO produtos (nome_produto,preco,qtd_estoque,cod_barras,data_validade) value
('Tesla','350.00','15','02983108319310','22-12-2027'),
('Nike','600..00','150','0912840124124','09-12-2030'),
('Adidas','550.00','90','12398120398','19-03-2026'),
('Vans','400.00','30','3897429347332','10-09-2028'),
('Puma','335.99','25','3743048324389','07-04-2029'),
('Fila','150.00','2','87364242349782','10-08-2025'),
('Mizuno','250.00','70','392743947389274','09-01-2026');

INSERT INTO pedidos(forma_pagamento,data_envio,id_clientes,data_entrega) value
('credito','12-09-2025','2','15-09-2025'),
('debito','11-09-2025','5','14-09-2025'),
('pix','10-09-2025','8','13-09-2025'),
('boleto','09-09-2025','6','12-09-2025'),
('debito','08-09-2025','1','11-09-2025'),
('credito','07-09-2025','9','10-09-2025'),
('pix','06-09-2025','10','09-09-2025');


INSERT INTO itensPedidos(id_pedido,preco_total,id_produto,qtd_itens) value
(1,'900.00',5,2),
(5,'350.00',4,1),
(6,'400;00',1,1),
(4,'1000.00',6,7),
(3,'450.00',2,2),
(7,'800,00',7,3),
(2,'1500.00',3,9);


INSERT INTO funcionarios (cpf,nome,email,id_cargo,data_nasc) value
('8937420347203','Gabriela Pinhreiros','gabriela@gmail.com',7,'21-09-1998'),
('89520840284204','Julia Silva','julia@gmail.com',5,'08-06-2002'),
('983749274239','Enzo Gael','enzo@gmail.com',6,'14-06-2003'),
('234832048304','Kethelyn','kethelyn@gmail.com',4,'19-07-2005'),
('690304999345405','Jhonatan Pereira','jhonatan@gmail.com',3,'29-01-2004'),
('519346936423423','Josimeire Lima','josimeire@gmail.com',2,'01-01-1985'),
('6028302834028','Marlene Costa','marlene@gmail.com',1,'07-11-2005');

INSERT INTO cargo (departamento) value
('Marketing'),
('RH'),
('Supervisor TI'),
('Vendedor'),
('Gerente de Loja'),
('Fnanceiro'),
('Caixa');





