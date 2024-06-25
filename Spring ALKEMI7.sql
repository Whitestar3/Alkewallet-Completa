CREATE DATABASE IF NOT EXISTS alkemi7;

USE alkemi7;

CREATE TABLE IF NOT EXISTS users (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    fullname VARCHAR(255) NOT NULL,
    saldo_silver DOUBLE DEFAULT 0.0,
    saldo_golden DOUBLE DEFAULT 0.0
);


CREATE TABLE IF NOT EXISTS transferencia (
    idTransferencia BIGINT AUTO_INCREMENT PRIMARY KEY,
    nombreDestinatario VARCHAR(255) NOT NULL,
    rut VARCHAR(20) NOT NULL,
    numeroCuenta VARCHAR(50) NOT NULL,
    banco VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    monto VARCHAR(50) NOT NULL
);



CREATE TABLE IF NOT EXISTS bancos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);


INSERT INTO users (username, password, fullname, saldo_silver, saldo_golden) 
VALUES 
    ('Sabina', '12345678', 'User One', 100000.0, 100000.0),
    ('Ana lisa Melano', 'password1', 'User penca', 1000.0, 5000.0),
    ('user2', 'password2', 'User repenca', 500.0, 3000.0),
    ('Abraham melorto', 'password3', 'User rerepenca', 2000.0, 10000.0),
    ('Zoila Cerda', 'password4', 'User megapenca', 1500.0, 2000.0),
    ('Armando Bronca Segura', 'password5', 'User jumbopenca', 300.0, 6000.0);
    
    
    INSERT INTO transferencia (nombreDestinatario, rut, numeroCuenta, banco, email, monto)
VALUES 
    ('Ana lisa Melano', '1234567890', '123-456-789', 'Banco Chile', 'analisamelano@example.com', '15000'),
    ('Abraham melorto', '0987654321', '987-654-321', 'Banco Edward', 'abrahammelorto@example.com', '25000'),
    ('luz roja', '1357924680', '135-792-468', 'Banco Saldo Cero', 'luzroja@example.com', '5000'),
    ('Brisa Marina', '2468013579', '246-801-357', 'Banco El Cogotero', 'brisamarina@example.com', '10000'),
    ('Zoila Cerda', '9876543210', '987-654-321', 'Banco El Estafado', 'zoilacerda@example.com', '20000'),
    ('Paca Garte', '1468013579', '246-801-357', 'Banco Tomcat de Mierda', 'pacagarte@example.com', '10000'),
    ('Armando Bronca Segura', '276543210', '987-654-321', 'Banco ALKEWALLET (ESTAFAMOS CON CLASES)', 'armandobronca@example.com', '10000');


INSERT INTO bancos (nombre)
VALUES 
    ('Banco El Cogotero'),
    ('Banco El Estafador'),
    ('Banco Saldo Cero'),
    ('Banco Tomcat de Mierda'),
    ('Banco ALKEWALLET (ESTAFAMOS CON CLASES)');
