--5--

/*  select * from centros;



  DECLARE
    vnombre CENTROS.NOMBRE%TYPE := 'ABRERA';
    vprovincia CENTROS.PROVINCIA%TYPE := 'ARABA';
    v_id CENTROS.ID%TYPE;
  
  BEGIN
      
    IF(SQL%FOUND) THEN
      UPDATE CENTROS SET PROVINCIA = vprovincia 
      where UPPER(Nombre) = vnombre;
      commit;  
      
     
     END IF;    
      
     
   END;*/
  
--6--


   --Esta select no debe de ir en el BEGIN ya que esta devuelve mas de una fila--

  
  CREATE OR REPLACE PROCEDURE VER_trabajador IS
      
      
      CURSOR emp_cursor is 
          Select APELLIDO1, APELLIDO2, FECHANAC    
          From TRABAJADORES order by Apellido1;
          
      emp_record emp_cursor%ROWTYPE;
      
      

   BEGIN  
        Open emp_cursor;        
        LOOP 
        
          FETCH emp_cursor into emp_record;
            DBMS_OUTPUT.PUT_LINE('Apellidos del trabajador: ' || emp_record.apellido1 || emp_record.apellido2 || to_char(emp_record.fechanac));            
          EXIT WHEN emp_cursor%NOTFOUND;
          
        END LOOP;
      
      
    
  
  END;
  

 execute Ver_trabajador;
 
 Select * from TRABAJADORES;
 
 
 

