-- 1. CREACIÓN DE TABLAS (DDL)
CREATE TABLE TEMAS (
    CodTema INT PRIMARY KEY,
    DescripTema VARCHAR(100)
);

CREATE TABLE LOCALIDADES (
    CodPostal INT PRIMARY KEY,
    Localidad VARCHAR(100),
    Provincia VARCHAR(100),
    Pais VARCHAR(100)
);

CREATE TABLE AUTORES (
    CodAutor INT PRIMARY KEY,
    NomAutor VARCHAR(100),
    DomicAutor VARCHAR(100),
    CodPostal INT,
    Edad INT,
    FOREIGN KEY (CodPostal) REFERENCES LOCALIDADES(CodPostal)
);

CREATE TABLE LIBROS (
    CodLib INT PRIMARY KEY,
    DescripLib VARCHAR(100),
    CodAutor INT,
    CodTema INT,
    Precio DECIMAL(10,2),
    FOREIGN KEY (CodAutor) REFERENCES AUTORES(CodAutor),
    FOREIGN KEY (CodTema) REFERENCES TEMAS(CodTema)
);

CREATE TABLE SOCIOS (
    DNI INT PRIMARY KEY,
    NomSocio VARCHAR(100),
    CodPostal INT,
    Telefono VARCHAR(20),
    Edad INT,
    FOREIGN KEY (CodPostal) REFERENCES LOCALIDADES(CodPostal)
);

CREATE TABLE PRESTAMOS (
    FechaPrest DATE,
    CodLib INT,
    DNI INT,
    FecDevoluPres DATE,
    FecdevReal DATE,
    PRIMARY KEY (FechaPrest, CodLib, DNI),
    FOREIGN KEY (CodLib) REFERENCES LIBROS(CodLib),
    FOREIGN KEY (DNI) REFERENCES SOCIOS(DNI)
);

-- 2. CARGA DE DATOS DE PRUEBA (DML)

-- Insertar Localidades (Incluyendo Córdoba, Argentina para la Consulta 2)
INSERT INTO LOCALIDADES VALUES (5000, 'Cordoba', 'Cordoba', 'Argentina');
INSERT INTO LOCALIDADES VALUES (1425, 'CABA', 'Buenos Aires', 'Argentina');
INSERT INTO LOCALIDADES VALUES (28001, 'Madrid', 'Madrid', 'España');

-- Insertar Temas
INSERT INTO TEMAS VALUES (1, 'Programación');
INSERT INTO TEMAS VALUES (2, 'Bases de Datos');
INSERT INTO TEMAS VALUES (3, 'Novela Histórica');

-- Insertar Autores
INSERT INTO AUTORES VALUES (10, 'C.J. Date', 'Calle Falsa 123', 5000, 70); -- De Córdoba
INSERT INTO AUTORES VALUES (20, 'Miguel de Cervantes', 'Alcala 45', 28001, 60);

-- Insertar Libros
INSERT INTO LIBROS VALUES (101, 'Introducción a SQL', 10, 2, 5500.00);
INSERT INTO LIBROS VALUES (102, 'Sistemas de BD', 10, 2, 7200.00);
INSERT INTO LIBROS VALUES (103, 'Don Quijote', 20, 3, 4500.00);

-- Insertar Socios
INSERT INTO SOCIOS VALUES (35111222, 'Juan Perez', 5000, '351-4445566', 28);
INSERT INTO SOCIOS VALUES (40333444, 'Maria Garcia', 1425, '11-9998877', 22);

-- Insertar Préstamos (Incluyendo fechas de Enero 2025 para la Consulta 1)
INSERT INTO PRESTAMOS VALUES ('2025-01-10', 101, 35111222, '2025-01-20', '2025-01-19');
INSERT INTO PRESTAMOS VALUES ('2025-01-15', 103, 40333444, '2025-01-25', NULL);
INSERT INTO PRESTAMOS VALUES ('2025-02-05', 102, 35111222, '2025-02-15', NULL); -- Fuera de rango
