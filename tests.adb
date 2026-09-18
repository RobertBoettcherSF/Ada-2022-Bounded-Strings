pragma Ada_2022;

with Ada.Assertions; use Ada.Assertions;
with Ada.Strings;
with Ada.Text_IO; use Ada.Text_IO;
with Bounded_Demo; use Bounded_Demo;

procedure Tests is
   N : Short_Name;
   Raised : Boolean;
begin
   Assert (Max_Capacity = 20);
   N := Make ("Ada");
   Assert (As_String (N) = "Ada");
   Assert (Length (N) = 3);
   Put_Line ("PASS To_Bounded_String / Length");

   N := Append_Name (N, "-2022");
   Assert (As_String (N) = "Ada-2022");
   Put_Line ("PASS Append");

   Raised := False;
   begin
      N := Make ("123456789012345678901");  -- 21 > 20
   exception
      when Ada.Strings.Length_Error =>
         Raised := True;
   end;
   Assert (Raised);
   Put_Line ("PASS Length_Error on overflow (Drop => Error)");

   Put_Line ("All Bounded Strings topic tests passed.");
end Tests;
