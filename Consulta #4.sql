/* EX 1 */
SELECT * FROM cliente

SELECT * FROM funcionario
SELECT * FROM aluguel
SELECT * FROM aluguelequipamento
SELECT * FROM equipamento

/* Ex 2 */
SELECT nomeCliente, dataHoraRetirada FROM cliente
JOIN aluguel
ON cliente.idCliente = aluguel.idCliente

/* Ex 3 */
SELECT nomeEquipamento, aluguelequipamento.qtd,
dataHoraRetirada FROM aluguelequipamento 
JOIN equipamento
ON equipamento.idEquipamento = aluguelequipamento.idEquipamento
JOIN aluguel
ON aluguel.idAluguel = aluguelequipamento.idAluguel

/* Ex 4 */
SELECT nomeFuncionario, dataHoraRetirada FROM aluguel
JOIN funcionario
ON funcionario.idFuncionario = aluguel.idFuncionario

/* Ex 5 */
SELECT COUNT(*) AS 'Qtd Clientes' FROM cliente

/* Ex 6 */
SELECT nomeCliente, COUNT(*) AS 'Alugueis feitos' FROM aluguel
JOIN cliente
ON cliente.idCliente = aluguel.idCliente
GROUP BY nomeCliente 
 
/* Ex 7 */
select