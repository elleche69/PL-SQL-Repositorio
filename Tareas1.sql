SET SERVEROUTPUT ON 
--1--
  DECLARE
    v LONG := 'HOLA MUNDO';
  BEGIN
    DBMS_OUTPUT.PUT_LINE(v);
  END;




--2--

  DECLARE
    v CENTROS.ID%TYPE;
  
  BEGIN
    select MAX(ID) into v from CENTROS;
    DBMS_OUTPUT.PUT_LINE('EL ID MAXIMO ES '||v);
    
  END;
  
  --NO DEVUELVE NADA YA QUE NO TENEMOS DATOS INTRODUCIDOS CENTROS EN LA TABLA CENTROS--
  
--3--

  INSERT INTO CENTROS(NOMBRE,CALLE,NUMERO,CP,CIUDAD,PROVINCIA,TELEFONO)
  VALUES ('Y','A',30,'T','Y','U','I');
  
  SELECT * FROM CENTROS;
  DESC CENTROS;

  /*NO HACE FALTA INTRODUCIR ID YA QUE TENEMOS UNA COLUMNA AUTOINCREMETAL CON ALWAYS
  (NO PERMITE LA INTRODUCCION MANUAL DE LA COLUMNA EN CUESTION)*/



--4--

  DECLARE
    v LONG := 'ABRERA';
    r CENTROS.NOMBRE%TYPE;
    t Integer: = 0;
    o integer = 0;
  BEGIN
    select Nombre into r from CENTROS WHERE ID = 1;
    
    
    LOOP
      IF v = r then select MAX(ID) + 1 INTO t FROM CENTROS;
      else
  
  
    EXIT WHEN 
  
  END;


  
  
  