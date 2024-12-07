```ada
function Check_Range(Num : Integer) return Boolean is
begin
  return Num in 10..20;
end Check_Range;

with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
  Num : Integer;
begin
  Put_Line("Enter a number:");
  Get(Num);
  if Check_Range(Num) then
    Put_Line("Number is within range (10 to 20)");
  else
    Put_Line("Number is outside the range");
  end if;
exception
  when Ada.Text_IO.Data_Error =>
    Put_Line("Invalid input. Please enter an integer.");
end Main;
```