# TRANSACAO COM COMMIT

START TRANSACTION;
  DELETE FROM hoteis; 
  INSERT INTO hoteis(nome, localizacao, preco)
    VALUES ('luar ao sol','rua dos cria 744',155);
  SELECT * FROM hoteis;
COMMIT; 

SELECT * FROM hoteis;

# TRANSACAO COM ROLLBACK

START TRANSACTION;
  DELETE FROM hoteis; 
  INSERT INTO hoteis(nome, localizacao, preco)
    VALUES ('Siri Kascudo','rua do Bob 21' ,200);
  SELECT * FROM hoteis;
ROLLBACK; 

SELECT * FROM hoteis; 

# TRANSACAO COM ROLLBACK COM SAVEPOINT

START TRANSACTION;
    INSERT INTO hoteis(nome, localizacao, preco) VALUES ('beira oceano','rua dos moradores' ,100); 
    SELECT * FROM hoteis;
    SAVEPOINT meu_savepoint; 
    INSERT INTO hoteis(nome, localizacao, preco) VALUES ('Acabou a minha criatividade','rua da rua 85' ,179);
    SELECT * FROM hoteis;
    INSERT INTO hoteis(nome, localizacao, preco) VALUES ('Flamengo','rua do flamengo 81' ,192);
    SELECT * FROM hoteis;
ROLLBACK TO SAVEPOINT meu_savepoint; 

SELECT * FROM hoteis;

