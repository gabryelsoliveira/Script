senaclin/*1*/
alter table cliente add COLUMN 
email varchar(150) unique not NULL;
alter table cliente add COLUMN 
cidade varchar(50) not null;
alter table cliente add COLUMN 
estado char(2) not NULL;
/*2*/
INSERT INTO  cliente (nomeCliente, cpf, email, cidade, estado)
VALUES
('Donald','41578029874',
'donald@uol','Santos',
'SP'),
('Margarida','02589641587',
'margarida@uol','São Vicente',
'SP'),
('Patinhas','36985472103',
'patinhas@uol','Florianópolis',
'SC'),
('Huguinho','01245789630',
'huguinho@gmail','Santos',
'SP'),
('Luizinho','45781029874',
'luizinho@gmail','Praia Grande',
'SP'),
('Zezinho','02158639742',
'zezinho@gmail','São Vicente',
'SP'),
('Pardal','03697841520',
'pardal@uol','Santos',
'SP'),
('Zé Carioca','02151024780',
'zecarioca@uol','Rio de Janeiro',
'RJ'),
('Mickey','02360120965',
'mickey@hotmail','Recife',
'PE'),
('Minie','02102450690',
'minie@gmail','Recife',
'PE'),
('Pateta','021020542102',
'pateta@gmail','Santos',
'SP'),
('Branca de Neve','01245810201',
'brancadeneve@hotmail','São Joaquim',
'SC'),
('Aladin','01245789520',
'aladin@gmail','Belém',
'PA'),
('Cinderela','01254876201',
'cinderela@hotmail','Goiania',
'GO'),
('Mulan','01245782501',
'mulan@gmail','Rio das Ostras',
'RJ'),
('Moana','01021054207',
'moana@gmail','Parati',
'RJ'),
('Asnésio','01202236541',
'asnesio@uol','Belo Horizonte',
'MG'),
('Maga Patalógica','01245784102',
'maga@gmail','Cubatão',
'SP'),
('Capitão Boeing','01201548741',
'capitaoboeing@uol','Manaus',
'AM'),
('Pão Duro Mac Money','01245852012',
'paoduro@ig','Osasco',
'SP');
/*3*/
INSERT INTO Funcionario (nomeFuncionario, cpf, celular) VALUES 
('Cebolinha', '11122233344', '13991111111'),
('Cascão', '55566677788', '13992222222'),
('Chico Bento', '99900011122', '13993333333');
/*4*/
INSERT INTO equipamento 
(nomeEquipamento, qtd, ValorHora) VALUES 
('Cadeiras 02 posições', 50, 2.00),
('Cadeiras 04 posições', 100, 3.50),
('Guarda Sol P', 40, 2.00),
('Guarda Sol G', 60, 3.00),
('Mesinha', 30, 1.50);
/*5*/
insert into
    aluguel (
        idCliente,
        idFuncionario,
        dataHoraRetirada
    )
values (11, 1, '2024-12-08');
 
insert into
    aluguelEquipamento (
        idEquipamento,
        idAluguel,
        valorItem,
        valorUnitario,
        qtd
    )
values (1, LAST_INSERT_ID() , 2.00, 2.00, 1);
 
update equipamento set qtd = (qtd - 1) 
where idEquipamento = 1;
/*6*/
INSERT INTO aluguel 
(idCliente, idFuncionario, dataHoraRetirada) values
(9,3,'2024-12-10'); 
INSERT INTO aluguelequipamento 
(idEquipamento, idAluguel, valorItem, valorUnitario, qtd)
VALUES (2,2,7.00,3.50,2);
 
INSERT INTO aluguelequipamento 
(idEquipamento, idAluguel, valorItem, valorUnitario, qtd)
VALUES (4,2,3.0,3.0,1);
UPDATE equipamento SET qtd = qtd - 2 
WHERE idEquipamento = 2;
UPDATE equipamento SET qtd = qtd - 1 
WHERE idEquipamento = 4; 
/*7*/
/* aluguel 3*/
INSERT INTO aluguel 
(idCliente, idFuncionario, dataHoraRetirada)
VALUES (15,1,'2024-12-27'); 
INSERT INTO aluguelequipamento 
(idEquipamento, idAluguel, valorItem, valorUnitario, qtd)
VALUES (3,3,2.00,2.00,1);
UPDATE equipamento SET qtd = qtd - 1 
WHERE idEquipamento = 3;
/* aluguel 4*/
INSERT INTO aluguel 
(idCliente, idFuncionario, dataHoraRetirada)
VALUES (14,1,'2024-12-27');
INSERT INTO aluguelequipamento 
(idEquipamento, idAluguel, valorItem, valorUnitario, qtd)
VALUES (3,4,2.00,2.00,1);
UPDATE equipamento SET qtd = qtd - 1 
WHERE idEquipamento = 3;
/* aluguel 5*/
INSERT INTO aluguel 
(idCliente, idFuncionario, dataHoraRetirada)
VALUES (10,1,'2024-12-27');
INSERT INTO aluguelequipamento 
(idEquipamento, idAluguel, valorItem, valorUnitario, qtd)
VALUES (3,5,2.00,2.00,1);
UPDATE equipamento SET qtd = qtd - 1 
WHERE idEquipamento = 3;
/*8*/

 
/*9*/
select nomeCliente, email from cliente 
order by nomeCliente;
 
/*10*/
SELECT nomeFuncionario, celular FROM funcionario
ORDER BY nomeFuncionario

INSERT INTO aluguel
(idCliente, idFuncionario, dataHoraRetirada)


SELECT * FROM cliente
SELECT * FROM aluguel