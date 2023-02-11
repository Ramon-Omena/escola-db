CREATE OR REPLACE FUNCTION function_clientesDiarios
RETURN INT;
IS novos_clientes INT; 
BEGIN
    SELECT id_cliente INTO novos_clientes
    FROM clientes_cadastrados_hoje ORDER BY id_cliente DESC LIMIT 1;
    RETURN novos_clientes;
END;
