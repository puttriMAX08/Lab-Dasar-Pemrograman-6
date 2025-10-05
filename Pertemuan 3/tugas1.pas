program urutan_angka;

uses crt;

var
    a, b, c : integer;

begin
    clrscr;
    write('Masukkan Nilai 1: ');
    readln(a);
    write('Masukkan Nilai 2: ');
    readln(b);
    write('Masukkan Nilai 3: ');
    readln(c);

    if (a >= b) and (a >= c) then
    begin
        if (b >= c) then
            writeln('Urutan: ', a, b, c)
        else 
            writeln('Urutan: ', a, c, b);
    end
    else
        if (b >= a) and (b >= c) then
    

    begin
        if (a >= c) then
            writeln('Urutan: ', b, a, c)
        else
            writeln('Urutan: ', b, c, a);
    end
    else
    begin
        if (a >= b) then
            writeln('Urutan: ', c, a, b)
        else
            writeln('Urutan: ', c, b, a);
    end;
end.