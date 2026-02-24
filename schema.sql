-- Estructura de tablas basada en el examen
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
    Edad INT
);

CREATE TABLE PRESTAMOS (
    FechaPrest DATE,
    CodLib INT,
    DNI INT,
    FecDevoluPres DATE,
    FecdevReal DATE,
    PRIMARY KEY (FechaPrest, CodLib),
    FOREIGN KEY (CodLib) REFERENCES LIBROS(CodLib),
    FOREIGN KEY (DNI) REFERENCES SOCIOS(DNI)
);
