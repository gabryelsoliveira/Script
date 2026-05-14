/* EX 1 */
CREATE VIEW vw_DataFuncionarioCliente AS 
SELECT
aluguel.dataHoraRetirada,
funcionario.nomeFuncionario,
cliente.nomeCliente 
FROM aluguel

JOIN cliente 
ON aluguel.idCliente = cliente.idCliente
JOIN funcionario
ON aluguel.idFuncionario = funcionario.idFuncionario

SELECT * FROM vw_DataFuncionarioCliente

/* EX 2 */
CREATE PROCEDURE ps_AlugueisDatasEquip
(
IN dataPesquisa DATETIME
)

SELECT 
aluguel.dataHoraRetirada,
funcionario.nomeFuncionario,
cliente.nomeCliente, 
equipamento.nomeEquipamento
FROM aluguel

JOIN cliente 
ON aluguel.idCliente = cliente.idCliente

JOIN funcionario
ON aluguel.idFuncionario = funcionario.idFuncionario
                                                  
JOIN aluguelequipamento
ON aluguel.idAluguel = aluguelequipamento.idAluguel

JOIN equipamento
ON aluguelequipamento.idEquipamento = equipamento.idEquipamento

WHERE aluguel.dataHoraRetirada = dataPesquisa;

CALL ps_AlugueisDatasEquip ('2024-12-08');


/* Ex 3 */
SELECT * FROM aluguel

CREATE VIEW vw_AlugueisPagamentos AS 
SELECT
formaPagamento,
COUNT(idAluguel)

FROM aluguel 

GROUP BY formaPagamento;

SELECT * FROM vw_AlugueisPagamentos

/* Ex 4 */
CREATE PROCEDURE pU_Percentual
(
IN porcento DECIMAL(5,2)
)
UPDATE equipamento SET valorHora = valorHora + (porcento * valorHora / 100);

CALL pU_Percentual (20)

SELECT * FROM equipamento


/* Ex 5 */
CREATE PROCEDURE ps_AlugueisPagamento
(
IN forma VARCHAR(100)
)
SELECT * FROM vw_AlugueisPagamentos

WHERE vw_AlugueisPagamentos.formaPagamento = forma;

CALL ps_AlugueisPagamento ('credito');
