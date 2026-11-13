-- usuarios-local.sql: fica FORA do repositório (tem senha)
CREATE USER IF NOT EXISTS 'lanch_expedicao'@'localhost'
  IDENTIFIED BY '12345';
CREATE USER IF NOT EXISTS 'lanch_qualidade'@'localhost'
  IDENTIFIED BY '123456';
CREATE USER IF NOT EXISTS 'lanch_gerente'@'localhost'
  IDENTIFIED BY '1234567@';
CREATE USER IF NOT EXISTS 'lanch_admin'@'localhost'
  IDENTIFIED BY '123456789@';
