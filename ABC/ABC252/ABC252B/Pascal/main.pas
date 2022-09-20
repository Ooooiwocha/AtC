var 
  n, k, m, i, t: Int8;
  a: Array[1..100] of Int8;
  b: Array[1..100] of Boolean;
begin
  readln(n, k);
  for i:=1 to n do
    begin
      read(a[i]);
      if m < a[i] then m:= a[i];
    end;
  for i:=1 to k do
    begin
      read(t);
      b[t]:= TRUE;
    end;
  for i:=1 to n do
    begin
      if (a[i] = m) and (b[i] = TRUE) then
        begin
          writeln('Yes');
          exit();
        end;
    end;
  writeln('No');
end.
