import 'dart:convert';
import 'dart:io';

int n = 0;
double angkaPertama = 0;
double angkaKedua = 0;

void main() {
  print('=====> Praktik belajar Flutter Basic CLI <=====');
  print('=======> HSI Sanbox 3.0 - Flutter Grup <=======\n');
  print('********* Calculator CLI Dengan Dart **********');
  print('Silakan pilih mode pengoperasian !!!');
  print('1. Penambahan');
  print('2. Pengurangan');
  print('3. Perkalian');
  print('4. Pembagian');
  print('5. Modulus');
  pilihmenu();
}

void pilihmenu() {
  print('Silakan pilih Mode, ketik angka 1 ~ 5');
  String? sMode = stdin.readLineSync(encoding: utf8);
  if (sMode != null) {
    n = int.parse(sMode);
    switch (n) {
      case 1:
        print('Mode yang dipilih adalah Penambahan');
        pilihinput(n);
        break;
      case 2:
        print('Mode yang dipilih adalah Pengurangan');
        pilihinput(n);
        break;
      case 3:
        print('Mode yang dipilih adalah Perkalian');
        pilihinput(n);
        break;
      case 4:
        print('Mode yang dipilih adalah Pembagian');
        pilihinput(n);
        break;
      case 5:
        print('Mode yang dipilih adalah Modulus');
        pilihinput(n);
        break;
      default:
        print('Mode yang dipilih salah, silakan pilih kembali !!!');
    }
  }
}

void pilihinput(int mode) {
  double angkaHasil = 0;
  print('Silakan masukkan angke ke 1');
  String? sAngka1 = stdin.readLineSync();
  if (sAngka1 != null) {
    angkaPertama = double.parse(sAngka1);
    print('Angka ke 1 = $sAngka1');
  }
  print('Silakan masukkan angke ke 2');
  String? sAngka2 = stdin.readLineSync();
  if (sAngka2 != null) {
    angkaKedua = double.parse(sAngka2);
    print('Angka ke 2 = $sAngka2');
  }
  if (mode == 1) {
    angkaHasil = angkaPertama + angkaKedua;
    print('Hasil dari $angkaPertama + $angkaKedua = $angkaHasil');
  } else if (mode == 2) {
    angkaHasil = angkaPertama - angkaKedua;
    print('Hasil dari $angkaPertama - $angkaKedua = $angkaHasil');
  } else if (mode == 3) {
    angkaHasil = angkaPertama * angkaKedua;
    print('Hasil dari $angkaPertama * $angkaKedua = $angkaHasil');
  } else if (mode == 4) {
    try {
      angkaHasil = angkaPertama / angkaKedua;
      zerocheck(angkaHasil);
      angkaHasil = double.parse(angkaHasil.toStringAsFixed(3));
      print('Hasil dari $angkaPertama / $angkaKedua = $angkaHasil');
    } catch (e) {
      print('Error, tidak bisa dibagi dengan 0');
    }
  } else if (mode == 5) {
    angkaHasil = angkaPertama % angkaKedua;
    print('Hasil dari $angkaPertama % $angkaKedua = $angkaHasil');
  }
}

void zerocheck(double infinity) {
  if (infinity == 1.0 / 0.0) {
    throw DivByZero();
  }
}

class DivByZero implements Exception {}
