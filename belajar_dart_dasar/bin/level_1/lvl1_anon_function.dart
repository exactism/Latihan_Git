void main() {
  myFunction('Saya Sedang Belajar Dart',
      (KalimatKonversi) => KalimatKonversi.toLowerCase());
  myFunction('Saya Sedang Main Game',
      (KalimatKonversi) => KalimatKonversi.toUpperCase());
}

void myFunction(String KalimatAsli, String Function(String) KalimatKonversi) {
  print('${KalimatKonversi(KalimatAsli)}');
}
