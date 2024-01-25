void main() {
  myFunction(KalimatPertama: 'Saya Sedang', KalimatKedua: 'Belajar Dart');
  myFunction(KalimatKedua: 'Belajar Dart', KalimatPertama: 'Saya Sedang');
}

void myFunction({String? KalimatPertama, String? KalimatKedua}) {
  print('$KalimatPertama, $KalimatKedua');
}
