void main() {
  myFunction('Saya Sedang Belajar ', null);
  myFunction('Saya Sedang Belajar ', 'Dart');
}

void myFunction(String KalimatPertama, [String? KalimatKedua]) {
  print('$KalimatPertama, $KalimatKedua');
}
