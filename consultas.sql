-- 1. Listar los libros prestados entre el 1/01/25 y el 31/01/25.
-- Mostrar: código del libro, su descripción, descripción del tema, nombre y teléfono del socio.
-- Ordenado por descripción del libro.

SELECT 
    L.CodLib, 
    L.DescripLib, 
    T.DescripTema, 
    S.NomSocio, 
    S.Telefono
FROM PRESTAMOS P
JOIN LIBROS L ON P.CodLib = L.CodLib
JOIN TEMAS T ON L.CodTema = T.CodTema
JOIN SOCIOS S ON P.DNI = S.DNI
WHERE P.FechaPrest BETWEEN '2025-01-01' AND '2025-01-31'
ORDER BY L.DescripLib;

---

-- 2. Listar o mostrar todos los datos del libro, donde su autor 
-- sea argentino y de la localidad de Córdoba.

SELECT L.*
FROM LIBROS L
JOIN AUTORES A ON L.CodAutor = A.CodAutor
JOIN LOCALIDADES Loc ON A.CodPostal = Loc.CodPostal
WHERE Loc.Pais = 'Argentina' 
  AND Loc.Localidad = 'Cordoba';
