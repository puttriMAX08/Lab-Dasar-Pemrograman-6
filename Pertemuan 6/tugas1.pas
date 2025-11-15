uses crt; // Menggunakan unit CRT untuk membersihkan layar

{ Procedure untuk mencetak luas belah ketupat }
procedure CetakLuasBelahKetupat(d1, d2: integer);
var
  luas: real; // Variabel untuk menyimpan hasil perhitungan luas
begin
  luas := 0.5 * d1 * d2; // Menghitung dengan rumus luas belah ketupat
  writeln('Hasil (Procedure) -> Luas belah ketupat = ', luas:0:2); // Menampilkan hasil perhitungan
end;

{ Program Utama }
var
  d1, d2: integer; // Variabel untuk menyimpan input diagonal 1 dan diagonal 2
begin
  clrscr; // Membersihkan layar sebelum menampilkan input/output

  { Input diagonal 1 dan diagonal 2 dari user }
  write('Masukkan panjang diagonal 1: '); readln(d1); // Input diagonal 1, kemudian membaca nilai diagonal1
  write('Masukkan panjang diagonal 2: '); readln(d2); // Input diagonal 2, kemudian membaca nilai diagonal2
  writeln;

  { Memanggil procedure (tidak mengembalikan nilai) }
  CetakLuasBelahKetupat(d1, d2); // Memanggil procedure dengan parameter input dari user
end.