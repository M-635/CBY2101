--1
SELECT rut || '-' || dv AS RUN, apellidos || ' ' || nombres AS empleado, 
    email, zona, sueldo
FROM empleado
--WHERE sueldo > 1500000 AND INITCAP(zona) IN('Centro','Oriente');
WHERE sueldo > 1500000 AND (UPPER(zona) = UPPER('CeNtRo') 
                            OR UPPER(zona) = 'ORIENTE');

--2
SELECT rut || '-' || dv AS RUN, apellidos || ' ' || nombres AS empleado, 
    email, fecnac AS NACIMIENTO, sueldo
FROM empleado
WHERE fecnac LIKE '__/06/__'
--WHERE fecnac LIKE '%/06/%'
ORDER BY empleado;

--3
SELECT  rut || '-' || dv AS RUN, 
        apellidos || ' ' || nombres AS empleado, 
        zona, 
        rutempresa, 
        sueldo,
        sueldo * 1.2 AS "SUELDO AUMENTADO",
        ((sueldo * 1.2) - sueldo) "DIFERENCIA SUELDO"
FROM empleado
WHERE zona != 'Centro'
ORDER BY apellidos, nombres;

--4
select rut || '-'|| dv as run,
       apellidos || ' ' || nombres as empleado,
       zona,
       numproyectos,
       sueldo
from empleado
where numproyectos between 8 and 12
--where numproyectos >= 8 AND numproyectos <= 12
--where numproyectos in (8,9,10,11,12)
order by numproyectos desc;

--5
SELECT rut || '-' || dv AS RUN, apellidos || ' ' || nombres AS empleado, 
        email, fecingreso AS INGRESO, sueldo
FROM empleado
WHERE LOWER(apellidos) LIKE '__ch%';

--6
select rut || '-'|| dv as run,
       apellidos || ' ' || nombres as empleado,
       email,
       rutempresa AS "RUT EMPRESA",
       zona,
       sueldo
from empleado
WHERE zona NOT IN ('Centro','Norte','Poniente')
--where zona != 'Centro' and  zona != 'Norte' and  zona != 'Poniente'
order by zona asc;
