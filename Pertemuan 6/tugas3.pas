uses crt, math; // Menggunakan unit CRT untuk membersihkan layar dan MATH untuk fungsi matematika seperti sqrt

{ Function untuk menentukan apakah suatu bilangan prima atau tidak }
function IsPrime(n: integer): boolean;
var
  i, batas: integer;
begin
  // TODO 1: Handle bilangan kurang dari 2
  if n < 2 then { Bilangan kurang dari 2 (yaitu 0 dan 1) bukan bilangan prima }
  begin
    IsPrime := false; { Langsung kembalikan false }
    exit; { Keluar dari fungsi }
  end;

  // TODO 2: Handle bilangan 2
  if n = 2 then { Bilangan 2 adalah bilangan prima terkecil dan satu-satunya bilangan genap yang prima }
  begin
    IsPrime := true; { Langsung kembalikan true }
    exit;
  end;
  
  // TODO 3: Handle bilangan genap
  if n mod 2 = 0 then { Bilangan genap selain 2 pasti bukan bilangan prima }
  begin
    IsPrime := false;
    exit;
  end;
  
  // TODO 4: Cek faktor ganjil sampai akar kuadrat n
  { Mengecek sampai akar kuadrat n karena faktor terbesar akan berpasangan dengan faktor terkecil }
  batas := trunc(sqrt(n)); // membuat batasan cek sampai akar kuadrat berapa (pembulatan ke bawah dari akar kuadrat n)
  for i := 3 to batas do
    if n mod i = 0 then { jika n habis dibagi i, maka bukan bilangan prima }
    begin
      IsPrime := false;
      exit;
    end;

  // TODO 5: Return true jika lolos semua pengecekan
  IsPrime := true; { Jika tidak ditemukan faktor pembagi, maka n adalah bilangan prima }
end;

{ Program Utama }
var
  bil: integer; // Variabel untuk menyimpan input bilangan dari user

begin
  clrscr; // Membersihkan layar sebelum program dijalankan
  
  repeat
    writeln;

    // Minta user masukkan bilangan
    write('Masukkan bilangan bulat positif: ');
    readln(bil); // Membaca input dari user

    // Memanggil function IsPrime untuk mengecek apakah bilangan tersebut prima
    if IsPrime(bil) then
      writeln(bil, ' adalah bilangan prima') { Jika hasil true, tampilkan bahwa bilangan prima}
    else
      writeln(bil, ' bukan bilangan prima'); { Jika hasil false, tampilkan bahwa bukan bilangan prima }

    { jika user memasukkan 0, maka akan keluar dari perulangan }
    if bil = 0 then 
      break;

  until false; { Perulangan akan terus berjalan sampai user memasukkan 0 }

  writeln ('Program Selesai.')
end.