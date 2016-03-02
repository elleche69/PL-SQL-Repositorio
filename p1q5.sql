--5--
  select * from centros;



  DECLARE
    vnombre CENTROS.NOMBRE%TYPE := 'ABRERA';
    vprovincia CENTROS.PROVINCIA%TYPE := 'ARABA';
    v_nombre CENTROS.NOMBRE%TYPE;
    v_id CENTROS.ID%TYPE;
  
  BEGIN
  
    SELECT ID,NOMBRE INTO v_id, v_nombre FROM CENTROS
    WHERE NOMBRE = vnombre;
    
    IF(SQL%FOUND) THEN
      UPDATE CENTROS SET PROVINCIA = vprovincia 
      where ID = v_id;
      commit;      
     END IF;    
      
     
   END;
  
  
  
  
 
  
