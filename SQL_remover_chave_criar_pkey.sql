--- DROP PRIMARY KEY TICKET;
ALTER TABLE db.teste
DROP PRIMARY KEY;

--
ALTER TABLE db.teste
ADD id BIGINT AUTO_INCREMENT PRIMARY KEY;

ALTER TABLE db.teste
ADD PRIMARY KEY(id);


DESCRIBE zendesk_gold.monitoramento_teste;
*/-- SELECT * FROM db.teste;
