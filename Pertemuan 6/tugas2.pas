uses crt; // Menggunakan unit CRT untuk membersihkan layar

{ Procedure untuk mencetak luas trapesium }
procedure CetakLuasTrapesium(sisiAtas, sisiBawah, tinggi: integer);
var
  luas: real; // Variabel untuk menyimpan hasil perhitungan luas
begin
  luas := 0.5 * (sisiAtas + sisiBawah) * tinggi; // Menghitung dengan rumus luas trapesium
  writeln('Hasil (Procedure) -> Luas trapesium = ', luas:0:2); // Menampilkan hasil perhitungan
end;

{ Program Utama }
var
  atas, bawah, tinggi: integer; // Variabel input dari user
begin
  clrscr; // Membersihkan layar sebelum menampilkan input/output

  { Input sisi atas, sisi bawah, dan tinggi dari user }
  write('Masukkan panjang sisi atas: '); readln(atas); // Input sisi atas, kemudian membaca nilai sisi atas
  write('Masukkan panjang sisi bawah: '); readln(bawah); // Input sisi bawah, kemudian membaca nilai sisi bawah
  write('Masukkan tinggi trapesium: '); readln(tinggi); // Input tinggi, kemudian membaca nilai tinggi
  writeln;

  { Memanggil procedure (tidak mengembalikan nilai) }
  CetakLuasTrapesium(atas, bawah, tinggi); // Memanggil procedure dengan parameter input dari user
end.