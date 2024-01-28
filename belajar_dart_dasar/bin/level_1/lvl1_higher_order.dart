void main() {
  myHigherOrder('Saya Sedang Belajar Dart', myLowerOrder);
  myHigherOrder('Saya Sedang Main Game', myLowerOrder);
}

void myHigherOrder(
    String KalimatPertama, String Function(String) KalimatKedua) {
  var Ucapan = KalimatKedua(KalimatPertama);
  print('$Ucapan');
}

String myLowerOrder(String Kalimat) {
  if (Kalimat == 'Saya Sedang Belajar Dart') {
    return '$Kalimat, Semoga Berhasil';
  } else {
    return '$Kalimat, Jangan Malas';
  }
}
