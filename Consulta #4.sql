/* EX 1 */
SELECT * FROM cliente

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
SELECT max(valorPago) AS 'Maior valor' FROM aluguel 

/* Ex 8 */
SELECT MIN(valorPago) AS 'Menor valor' FROM aluguel 

/* Ex 9 */
SELECT AVG(valorPago) AS 'Média dos alugueis' FROM aluguel

/* Ex 10 */
SELECT SUM(valorPago) AS 'Total arrecadado dos aluguéis' FROM aluguel
WHERE DAY('2026-05-11')

/* Ex 11 */
SELECT nomeEquipamento, qtd FROM equipamento
WHERE qtd >= 40
 
/* EX 12 */
SELECT dataHoraRetirada, valorPago, formaPagamento FROM aluguel
WHERE formaPagamento = 'Débito' OR formaPagamento = 'Crédito'
 
/* EX 13 */
SELECT nomeCliente, COUNT(*) AS 'Qtd aluguéis realizados' FROM aluguel
JOIN cliente
ON aluguel.idCliente = cliente.idCliente
GROUP BY nomeCliente
HAVING COUNT(*) >=2
 
/* EX 14 */
SELECT nomeEquipamento, SUM(valorPago) AS 'Total arrecadado de cada aluguel' FROM equipamento
JOIN aluguelequipamento
ON equipamento.idEquipamento = aluguelequipamento.idEquipamento
JOIN aluguel
ON aluguelequipamento.idAluguel = aluguel.idAluguel
GROUP BY nomeEquipamento
 
/* EX 15 */
SELECT nomeCliente, SUM(valorPago) AS 'Valor movimentado por cliente' FROM aluguel
JOIN cliente
ON aluguel.idCliente = cliente.idCliente
JOIN aluguelequipamento
ON aluguel.idAluguel = aluguelequipamento.idAluguel
GROUP BY nomeCliente
 
/* EX 16 */
SELECT nomeEquipamento, AVG(valorHora) AS 'Média de valor' FROM equipamento
WHERE valorHora > (SELECT AVG(valorHora)FROM equipamento)
GROUP BY nomeEquipamento
 
/* EX 17 */
SELECT nomeFuncionario, COUNT(*) AS 'Qtd de aluguéis realizados' FROM funcionario
JOIN aluguel
ON funcionario.idFuncionario = aluguel.idFuncionario
WHERE aluguel.idFuncionario = (SELECT MAX(idFuncionario)FROM aluguel)
 
/* EX 18 */
SELECT dataHoraRetirada, SUM(valorPago) AS 'Valor total maior que 100,00' FROM aluguel
WHERE valorPago > 100
GROUP BY dataHoraRetirada
 
/* EX 19 */
SELECT formaPagamento, SUM(valorPago) AS 'Total de cada forma de pagamento' FROM aluguel
GROUP BY formaPagamento
 
/* EX 20 */
SELECT nomeEquipamento, COUNT(*) AS 'Qtd alugados' FROM equipamento
JOIN aluguelequipamento
ON equipamento.idEquipamento = aluguelequipamento.idEquipamento
JOIN aluguel
ON aluguelequipamento.idAluguel = aluguel.idAluguel
GROUP BY nomeEquipamento
HAVING COUNT(*) >= 3
