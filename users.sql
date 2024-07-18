CREATE USER 'Gabriel Barbosa'@'localhost' IDENTIFIED BY 'admin';
CREATE USER 'Pedro Queixada'@'localhost' IDENTIFIED BY '1234';
CREATE USER 'Everton Ribeiro'@'localhost' IDENTIFIED BY '0123';
CREATE USER 'Giorgian De Arrascaeta'@'localhost' IDENTIFIED BY 'adm';
CREATE USER 'Fabricio Caio Julien Fonseca'@'localhost' IDENTIFIED BY '1010';


CREATE ROLE 'Administrador';
CREATE ROLE 'Funcionario';
CREATE ROLE 'Cliente';


DROP ROLE 'Administrador';
DROP ROLE 'Funcionario';
DROP ROLE 'Cliente';

GRANT ALL ON *. * TO 'Administrador';
GRANT CREATE, SELECT ON agencia_viagens. * TO 'Funcionario';
GRANT SELECT ON agencia_viagens.cliente TO 'Cliente';


GRANT 'Administrador' TO 'Fabricio Caio Julien Fonseca'@'localhost';
GRANT 'Cliente' TO 'Gabriel Barbosa'@'localhost';
GRANT 'Funcionario' TO 'Everton Ribeiro'@'localhost';
GRANT 'Funcionario' TO 'Giorgian De Arrascaeta'@'localhost';
GRANT 'Cliente' TO 'Pedro Queixada'@'localhost';


SHOW GRANTS FOR 'Fabricio Caio Julien Fonseca'@'localhost';
SHOW GRANTS FOR 'Gabriel Barbosa'@'localhost';
SHOW GRANTS FOR 'Everton Ribeiro'@'localhost';
SHOW GRANTS FOR 'Giorgian De Arrascaeta'@'localhost';
SHOW GRANTS FOR 'Pedro Queixada'@'localhost';