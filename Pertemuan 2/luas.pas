uses crt;

var
  panjang, lebar, luas, keliling: real;

begin
  clrscr;
  
  write('Masukkan panjang lapangan (meter): ');
  readln(panjang);
  
  write('Masukkan lebar lapangan (meter): ');
  readln(lebar);
  
  luas := panjang * lebar;
  keliling := 2 * (panjang + lebar);
  
  writeln;
  writeln('Luas lapangan: ', luas:0:2, 'meter persegi');
  writeln('Keliling lapangan: ', keliling:0:2, 'meter');
  
  readln;
end.