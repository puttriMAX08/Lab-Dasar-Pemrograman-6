uses crt;

var
    angka : integer;

begin
    clrscr;
    write('Masukkan angka: ');
    readln(angka);

case angka of
        1: writeln('Kopi');
        2: writeln('Teh');
        3: writeln('Jus');
        4: writeln('Susu');
        5: writeln('Air Putih');
    else
        writeln('Menu tidak tersedia');
    end;
end.