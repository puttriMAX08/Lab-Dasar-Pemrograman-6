uses crt;

var
  jenis, lama, biaya: integer;

begin
  clrscr;
  writeln('=== Program Hitung Biaya Parkir ===');
  writeln('1 = Motor');
  writeln('2 = Mobil');
  writeln('3 = Truk');
  write('Masukkan jenis kendaraan: '); readln(jenis);
  write('Masukkan lama parkir (jam): '); readln(lama);

  case jenis of
    1: begin
         biaya := lama * 2000;
         if biaya > 10000 then
           biaya := 10000;
       end;
    2: begin
         biaya := lama * 5000;
         if biaya > 25000 then
           biaya := 25000;
       end;
    3: begin
         biaya := lama * 8000;
         if biaya > 40000 then
           biaya := 40000;
       end;
  else
    biaya := 0;
    writeln('Jenis kendaraan tidak valid!');
  end;

  writeln('Total biaya parkir: Rp ', biaya);
  readln;
end.