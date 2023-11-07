program tugasKrs;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  Classes
  { you can add units after this };

var
  nama: string;
  nim: string;  // Ubah tipe data nim menjadi string
  inputFile, outputFile: text;
  inputData, outputData: string;

  matkul: array [1..8] of string;  // Ubah tipe data matkul menjadi string
  i: integer;

procedure menuKrs;
var
  selectedMatkul: string;  // Tambahkan variabel selectedMatkul
begin
  // menu krs
  assign(inputFile, 'I:\tugasAlgo\inputKRS.txt');
  reset(inputFile);

  while not EOF(inputFile) do
  begin
    ReadLn(inputFile, inputData);
    writeln(inputData);
  end;

  Close(inputFile);
  // end KRS

  // array KRS
  matkul[1] := '1';
  matkul[2] := '2';
  matkul[3] := '3';
  matkul[4] := '4';
  matkul[5] := '5';
  matkul[6] := '6';
  matkul[7] := '7';
  matkul[8] := '8';
  // end array

  // input matkul
  assign(outputFile, 'I:\tugasAlgo\hasilKRS.txt');
  append(outputFile);
  writeln(outputFIle, '========DAFTAR MATA KULIAH YANG ANDA PILIH========');
  close(outputFile);
  for i := 0 to 7 do
  begin
    write('masukan mata kuliah pilihan mu : ');
    readln(selectedMatkul);  // Ganti variabel matkul menjadi selectedMatkul

    case selectedMatkul of
      '1': begin
             assign(outputFile, 'I:\tugasAlgo\hasilKRS.txt');
             append(outputFile);  // Gunakan rewrite agar tidak menimpa hasil sebelumnya
             writeln(outputFile, 'KALKULUS I');
             close(outputFile);
           end;
      '2': begin
             assign(outputFile, 'I:\tugasAlgo\hasilKRS.txt');
             append(outputFile);  // Gunakan rewrite agar tidak menimpa hasil sebelumnya
             writeln(outputFile, 'ALGORITMA & PEMROGRAMAN I');
             close(outputFile);
           end;
      '3': begin
             assign(outputFile, 'I:\tugasAlgo\hasilKRS.txt');
             append(outputFile);  // Gunakan rewrite agar tidak menimpa hasil sebelumnya
             writeln(outputFile, 'SISTEM DIGITAL');
             close(outputFile);
           end;
      '4': begin
             assign(outputFile, 'I:\tugasAlgo\hasilKRS.txt');
             append(outputFile);  // Gunakan rewrite agar tidak menimpa hasil sebelumnya
             writeln(outputFile, 'ALJABAR VEKTOR & MATRIKS');
             close(outputFile);
           end;
      '5': begin
             assign(outputFile, 'I:\tugasAlgo\hasilKRS.txt');
             append(outputFile);  // Gunakan rewrite agar tidak menimpa hasil sebelumnya
             writeln(outputFile, 'BAHASA INGGRIS');
             close(outputFile);
           end;
      '6': begin
             assign(outputFile, 'I:\tugasAlgo\hasilKRS.txt');
             append(outputFile);  // Gunakan rewrite agar tidak menimpa hasil sebelumnya
             writeln(outputFile, 'PENGANTAR TEKNIK INFORMATIKA');
             close(outputFile);
           end;
      '7': begin
             assign(outputFile, 'I:\tugasAlgo\hasilKRS.txt');
             append(outputFile);  // Gunakan rewrite agar tidak menimpa hasil sebelumnya
             writeln(outputFile, 'LOGIKA DISKRIT');
             close(outputFile);
           end;
      '8': begin
             assign(outputFile, 'I:\tugasAlgo\hasilKRS.txt');
             append(outputFile);  // Gunakan rewrite agar tidak menimpa hasil sebelumnya
             writeln(outputFile, 'PANCASILA');
             close(outputFile);
           end;
      // Tambahkan case untuk mata kuliah lainnya sesuai kebutuhan
    end;
  end;
end;

function inputNamaNim: string;
begin
    assign(outputFile, 'I:\tugasAlgo\hasilKRS.txt');
    append(outputFile);
    writeln(outputFile);
    close(outputFile);

  write('masukan nama : ');
  readln(nama);

  writeln;

  write('masukan nim : ');
  readln(nim);

  assign(outputFile, 'I:\tugasAlgo\hasilKRS.txt');
  append(outputFile);
  writeln(outputFile,'', nama);
  writeln(outputFile, nim);

  close(outputFile);
end;

begin
  inputNamaNim;
  menuKrs;

  readln;
end.

