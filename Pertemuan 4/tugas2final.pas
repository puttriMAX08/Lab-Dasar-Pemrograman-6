{
NIM_1 : 251401081
NIM_2 : 251401084
}

uses crt;

var
  kodeMenu, jumlah: integer;
  harga, subtotal, total: longint;
  tambah: char;

begin
  clrscr;
  total := 0;

  writeln('=== KASIR RESTORAN IKLC ===');
  writeln;

  repeat
    writeln('Daftar Menu:');
    writeln('1. Nasi Goreng  - Rp15000');
    writeln('2. Mie Goreng   - Rp12000');
    writeln('3. Es Teh       - Rp5000');
    writeln;

    write('Pilih menu (1-3): ');
    readln(kodeMenu);

    case kodeMenu of
      1: begin
           harga := 15000;
           write('Masukkan jumlah pesanan Nasi Goreng: ');
         end;
      2: begin
           harga := 12000;
           write('Masukkan jumlah pesanan Mie Goreng: ');
         end;
      3: begin
           harga := 5000;
           write('Masukkan jumlah pesanan Es Teh: ');
         end;
    else
      writeln('Kode menu tidak valid!');
      writeln;
      continue;
    end;

    readln(jumlah);

    subtotal := harga * jumlah;
    total := total + subtotal;

    writeln('Pesanan berhasil ditambahkan. Subtotal: Rp', subtotal);
    writeln;

    write('Tambah pesanan lagi? (Y/N): ');
    readln(tambah);
    writeln;

  until (UpCase(tambah) = 'N');

  writeln('===============================');
  writeln('Total Keseluruhan: Rp', total);
  writeln('Terima kasih telah berbelanja!');
  writeln('===============================');

end.