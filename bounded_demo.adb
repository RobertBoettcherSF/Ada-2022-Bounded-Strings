pragma Ada_2022;

with Ada.Strings;

package body Bounded_Demo is

   function Make (S : String) return Short_Name is
   begin
      return B20.To_Bounded_String (S, Drop => Ada.Strings.Error);
   end Make;

   function As_String (N : Short_Name) return String is
   begin
      return B20.To_String (N);
   end As_String;

   function Length (N : Short_Name) return Natural is
   begin
      return B20.Length (N);
   end Length;

   function Append_Name (N : Short_Name; Suffix : String) return Short_Name is
   begin
      return B20.Append (N, Suffix, Drop => Ada.Strings.Error);
   end Append_Name;

   function Max_Capacity return Natural is
   begin
      return B20.Max_Length;
   end Max_Capacity;

end Bounded_Demo;
