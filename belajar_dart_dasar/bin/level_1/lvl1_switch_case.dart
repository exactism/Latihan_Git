void main() {
  var umur = 17;
  switch (umur) {
    case < 2:
      print('Anda seorang bayi');
      break;
    case >= 2 && <= 5:
      print('Anda seorang balita');
      break;
    case >= 6 && <= 12:
      print('Anda seorang anak SD');
      break;
    case >= 13 && <= 15:
      print('Anda seorang anak SMP');
      break;
    case >= 16 && <= 18:
      print('Anda seorang anak SMK');
      break;
    default:
      print('Anda adalah mahasiswa');
  }
}
