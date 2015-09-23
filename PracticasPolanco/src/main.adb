with Ada.Text_IO; use Ada.Text_IO;

procedure Main is

  task Temperatura;
   task Humedad;


   t : Integer;
   h : Integer;
   i,j : Integer;

   task body Temperatura is
   begin
      i := 0;
      loop
         i := i + 1;
         t :=i;
         if((t > 37) and (h <20)) then
           Put_Line("Activar Riego ");
      elsif
           ((t < 20) and (h >40)) then
            Put_Line("Desactivar Riego");
            exit when i = 40;
            end if ;
      end loop;
   end Temperatura;

  task body Humedad is
   begin
      j:=0;
      loop
         j:= j + 1;
         H:=j;
          if((t > 37) and (h <20)) then
           Put_Line("Activar Riego ");
      elsif
           ((t < 20) and (h >40)) then
            Put_Line("Desactivar Riego");
            exit when j = 40;
             end if ;
        end loop;
     end Humedad;

begin
 Put_Line("Este es el Procedimiento Principal");
end Main;

