program project1;
uses crt;

var
  inputFile, outputFile: text;
  teks, teks2: string;
  i: integer;

procedure isiFile(kalimat:string);
begin
  assign(inputFile, 'I:\tugasAlgo2\input.txt');  //sesuaikan dengan tempat file di folder laptop masing masing
  append(inputFile);
  writeln(inputFile, kalimat);
  close(inputFile);
end;

procedure hasilFileTxt;
begin
  assign(inputFile, 'I:\tugasAlgo2\input.txt');    //sesuaikan dengan tempat file di folder laptop masing masing
  reset(inputFile);

  assign(outputFile, 'I:\tugasAlgo2\hasil.txt');    //sesuaikan dengan tempat file di folder laptop masing masing
  append(outputFile);

  while not eof(inputFile) do
  begin
    readln(inputFile, teks);
    writeln(outputFile, teks);
  end;

  close(inputFile);
  close(outputFile);
end;

function rekursif(a: integer): integer;
begin
  if (a = 0) then
  begin
    rekursif := 0;
  end
  else
  begin
    hasilFileTxt;
    rekursif := rekursif(a - 1);
  end;
end;

begin
  clrscr;
  write('masukan kalimat : ');
  readln(teks2);
  isiFile(teks2);

  write('Masukkan jumlah perulangan yang diinginkan: ');
  readln(i);
  rekursif(i);
  writeln('SILAHKAN CEK FILE HASIL.TXT!!');
  readln;
end.
