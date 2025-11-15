uses crt;

var
    tugas, kuis, uts, uas: array[1..5] of integer;
    rata: array[1..5] of real;
    status: array[1..5] of string;
    n, i: integer;

begin
    clrscr;
    write('Masukkan jumlah mahasiswa: '); readln(n);

    for i := 1 to n do
    begin
        writeln('Masukkan nilai-nilai mahasiswa ke-', i);
        write('Nilai Tugas: '); readln(tugas[i]);
        write('Nilai Kuis: '); readln(kuis[i]);
        write('Nilai UTS: '); readln(uts[i]);
        write('Nilai UAS: '); readln(uas[i]);

        rata[i] := (tugas[i] + kuis[i] + uts[i] + uas[i]) / 4.0;

        if rata[i] >= 70 then
        status[i] := 'Lulus'
        else
        status[i] := 'Tidak Lulus';
    end;

    for i := 1 to n do
    begin
        writeln('Mahasiswa ke-', i);
        writeln('Tugas: ', tugas[i]);
        writeln('Kuis: ', kuis[i]);
        writeln('UTS: ', uts[i]);
        writeln('UAS: ', uas[i]);
        writeln('Rata-rata: ', rata[i]:0:2);
        writeln('Status: ', status[i]);
    end;
end.