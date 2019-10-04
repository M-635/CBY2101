/*
SELECT  NRO_PROPIEDAD, NUMRUT_PROP "RUT PROPIETARIO", DIRECCION_PROPIEDAD, 
        TO_CHAR(VALOR_ARRIENDO, '$999G999G999') "VALOR ARRIENDO",
        LPAD(TO_CHAR(SUBSTR(VALOR_ARRIENDO, 1, 2*VALOR_ARRIENDO)/100,'$999G999G999'), 15, '*') "COMPENSACON"
FROM PROPIEDAD
WHERE ID_COMUNA IN (86,87,122,123,126) ORDER BY VALOR_ARRIENDO ASC;
*/

SELECT  NUMRUT_EMP||'-'||DVRUT_EMP "RUN EMPLEADO", 
        NOMBRE_EMP||' '||APPATERNO_EMP||' '||APMATERNO_EMP "NOMBRE EMPLEADO",
        FECING_EMP,
        TO_NUMBER(TO_CHAR(SYSDATE, 'YYYY') - TO_CHAR(FECING_EMP, 'YYYY')) "A�OS EMPRESA",
        TO_CHAR(SUELDO_EMP, '$999G999G999') "SUELDO ACTUAL",
        TO_CHAR(TRUNC(SUELDO_EMP*TO_NUMBER(TO_CHAR(SYSDATE, 'YYYY') - TO_CHAR(FECING_EMP, 'YYYY'))/100), '$999G999G999') "AUMENTO"
FROM EMPLEADO
ORDER BY TO_CHAR(TRUNC(SUELDO_EMP*TO_NUMBER(TO_CHAR(SYSDATE, 'YYYY') - TO_CHAR(FECING_EMP, 'YYYY'))/100), '$999G999G999') ASC;
        
        
       --- TO_NUMBER(TO_CHAR(SYSDATE, 'YYYY')-(TO_CHAR(FECING_EMP, 'YYYY')))/100