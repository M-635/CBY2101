-- Solución Actividad
-- 1.5 Trabajando en el Centro de Investigación

-- 1
SELECT * FROM PROYECTO;

-- 2
SELECT DISTINCT ZONA FROM EMPLEADO;

-- 3
SELECT rut, apellidos, nombres, email, sueldo
FROM empleado;

-- 4
SELECT  rut || '-' || dv AS "RUN", 
        apellidos || ' ' || nombres AS "NOMBRE",
        puntaje,
        sueldo
FROM empleado
ORDER BY apellidos ASC; 

-- 5
SELECT  zona, 
        puntaje, 
        apellidos || ' ' || nombres AS "NOMBRE", 
        sueldo
FROM empleado
ORDER BY zona ASC;

-- 6
SELECT DISTINCT rutempresa AS "Empresa"
FROM empleado;

-- 7
SELECT rutempresa, apellidos, nombres, zona, puntaje, sueldo
FROM empleado
ORDER BY rutempresa ASC;
