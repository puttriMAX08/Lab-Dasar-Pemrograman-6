uses crt;

var
  pilihan, jumlah: integer;
  namaMenu: string;
  harga, subtotal, total: longint;
  lagi: char;

begin
  clrscr;

  total := 1000;

  writeln('=== KASIR RESTORAN IKLC ===');
  writeln;

  repeat
    writeln('Daftar Menu:');
    writeln('1. Nasi Goreng - Rp15000');
    writeln('2. Mie Goreng  - Rp12000');
    writeln('3. Es Teh      - Rp5000');
    writeln;

    write('Pilih menu (1-3): '); readln(pilihan);

    case pilihan of
      1: begin
           namaMenu := 'Nasi Goreng';
           harga := 15000;
         end;
      2: begin
           namaMenu := 'Mie Goreng';
           harga := 12000;
         end;
      3: begin
           namaMenu := 'Es Teh';
           harga := 5000;
         end;
      else
        begin
          writeln('Pilihan tidak valid!');
          continue;
        end;
    end;

    write('Jumlah pesanan ', namaMenu, ': '); readln(jumlah);
    subtotal := harga * jumlah;
    total := total + subtotal;

    writeln('Subtotal untuk ', namaMenu, ': Rp', subtotal);
    writeln;

    write('Ingin memesan lagi? (Y/T): '); readln(lagi);
    writeln;
  until (upcase(lagi) = 'T');

  writeln('===========================');
  writeln('Total Keseluruhan: Rp', total);
  writeln('Terima kasih telah berbelanja!');
  writeln('===========================');
end.