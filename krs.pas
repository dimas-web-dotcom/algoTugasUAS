program tugasKrs;

uses
crt;

var
  nama: string;
  nim: string;
  inputFile, outputFile: text;
  inputData: string;
  i: integer;

procedure menuKrs;
var
  selectedMatkul: string;
begin
  clrscr;
  // menu krs
  assign(inputFile, 'I:\tugasAlgo\inputKRS.txt'); //sesuaikan dengan folder dan tempat peletakan file
  reset(inputFile);

  while not EOF(inputFile) do
  begin
    ReadLn(inputFile, inputData);
    writeln(inputData);
  end;

  Close(inputFile);
  // end KRS

  // input matkul
  assign(outputFile, 'I:\tugasAlgo\hasilKRS.txt');  //sesuaikan dengan folder dan tempat peletakan file
  append(outputFile);
  writeln(outputFIle, '========DAFTAR MATA KULIAH YANG ANDA PILIH========');
  close(outputFile);
  for i := 0 to 7 do
  begin
    write('masukan mata kuliah pilihan mu : ');
    readln(selectedMatkul);

    case selectedMatkul of
      '1': begin
             assign(outputFile, 'I:\tugasAlgo\hasilKRS.txt');  //sesuaikan dengan folder dan tempat peletakan file
             append(outputFile);
             writeln(outputFile, 'KALKULUS I');
             close(outputFile);
           end;
      '2': begin
             assign(outputFile, 'I:\tugasAlgo\hasilKRS.txt');  //sesuaikan dengan folder dan tempat peletakan file
             append(outputFile);
             writeln(outputFile, 'ALGORITMA & PEMROGRAMAN I');
             close(outputFile);
           end;
      '3': begin
             assign(outputFile, 'I:\tugasAlgo\hasilKRS.txt');    //sesuaikan dengan folder dan tempat peletakan file
             append(outputFile);
             writeln(outputFile, 'SISTEM DIGITAL');
             close(outputFile);
           end;
      '4': begin
             assign(outputFile, 'I:\tugasAlgo\hasilKRS.txt');    //sesuaikan dengan folder dan tempat peletakan file
             append(outputFile);
             writeln(outputFile, 'ALJABAR VEKTOR & MATRIKS');
             close(outputFile);
           end;
      '5': begin
             assign(outputFile, 'I:\tugasAlgo\hasilKRS.txt');    //sesuaikan dengan folder dan tempat peletakan file
             append(outputFile);
             writeln(outputFile, 'BAHASA INGGRIS');
             close(outputFile);
           end;
      '6': begin
             assign(outputFile, 'I:\tugasAlgo\hasilKRS.txt');    //sesuaikan dengan folder dan tempat peletakan file
             append(outputFile);
             writeln(outputFile, 'PENGANTAR TEKNIK INFORMATIKA');
             close(outputFile);
           end;
      '7': begin
             assign(outputFile, 'I:\tugasAlgo\hasilKRS.txt');   //sesuaikan dengan folder dan tempat peletakan file
             append(outputFile);
             writeln(outputFile, 'LOGIKA DISKRIT');
             close(outputFile);
           end;
      '8': begin
             assign(outputFile, 'I:\tugasAlgo\hasilKRS.txt');   //sesuaikan dengan folder dan tempat peletakan file
             append(outputFile);
             writeln(outputFile, 'PANCASILA');
             close(outputFile);
           end;
    end;
  end;
end;

function inputNamaNim: string;
begin
  write('masukan nama : ');
  readln(nama);

  writeln;

  write('masukan nim : ');
  readln(nim);

  assign(outputFile, 'I:\tugasAlgo\hasilKRS.txt');
  append(outputFile);
  writeln(outputFile, ' ');
  writeln(outputFile,nama);
  writeln(outputFile, nim);

  close(outputFile);
end;

begin
  clrscr;
  inputNamaNim;
  menuKrs;

  writeln('SILAHKAN CEK FILE HASIL.TXT!');

  readln;
end.

