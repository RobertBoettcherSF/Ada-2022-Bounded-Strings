--  Ada 2022 topic: Ada.Strings.Bounded.
pragma Ada_2022;

with Ada.Strings.Bounded;

package Bounded_Demo is

   package B20 is new Ada.Strings.Bounded.Generic_Bounded_Length (Max => 20);
   subtype Short_Name is B20.Bounded_String;

   function Make (S : String) return Short_Name;
   function As_String (N : Short_Name) return String;
   function Length (N : Short_Name) return Natural;
   function Append_Name (N : Short_Name; Suffix : String) return Short_Name;
   function Max_Capacity return Natural;

end Bounded_Demo;
