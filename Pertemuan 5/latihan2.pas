uses crt;

var
  uas: array[1..10] of integer;
  n, i, j, sementara: integer;

begin
  clrscr;

  write('Masukkan jumlah mahasiswa: ');
  readln(n);

  for i := 1 to n do
  begin
    write('Nilai UAS mahasiswa ke-', i, ': ');
    readln(uas[i]);
  end;

  for i := 1 to n - 1 do
    for j := i + 1 to n do
      if uas[i] > uas[j] then
      begin
        sementara := uas[i];
        uas[i] := uas[j];
        uas[j] := sementara;
      end;
  clrscr;
  writeln('Nilai UAS setelah diurutkan:');
  for i := 1 to n do
    writeln('Mahasiswa ke-', i, ': ', uas[i]);

end.