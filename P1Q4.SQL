--4--

  Select * from Centros;
  DESC CENTROS;
  
  DECLARE
    v CENTROS.NOMBRE%TYPE:= 'ABRERA';
    g centros.nombre%TYPE;
    o Centros.ID%TYPE;
    h Centros.ID%TYPE:= 1;
    bol BOOLEAN := false;
        
  BEGIN
      SELECT MAX(ID) INTO o FROM CENTROS;
      While h < o loop
        select nombre into g from centros where id = h;
        
        if v = g THEN
          bol := true;
          h := o;
        END IF; 
        
        h := h + 1;
      END LOOP;  
       
      IF bol =true then 
          DBMS_OUTPUT.PUT_LINE('EL ID MAXIMO ES ');
          
      ELSE INSERT INTO CENTROS(NOMBRE) VALUES(v);
      END IF;        
    
  END;
  COMMIT;
  
  --SE PUEDE HACER TRANQUILAMENTE CON UNA SELECT NOMBRE INTO X WHERE UPPER(NOMBRE) = 'ABRERA'--