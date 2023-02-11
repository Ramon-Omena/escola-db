DELIMITER $$
CREATE PROCEDURE TRG_total_de_vendas_diaria (IN produto VARCHAR(30))
BEGIN
  SELECT CONCAT('Hoje o total de vendas desse produto, foi: ', totalVenda) AS totalVenda
  FROM tabela_vendas
  WHERE nome_produto = produto;
END$$
DELIMITER;
  
