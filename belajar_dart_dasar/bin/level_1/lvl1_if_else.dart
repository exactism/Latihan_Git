void main() {
  var umur = 17;
  if (umur < 2) {
    print('Anda masih bayi');
  } else if (umur >= 2 && umur <= 5) {
    print('Anda masih balita');
  } else if (umur >= 6 && umur <= 12) {
    print('Anda masih anak SD');
  } else if (umur >= 13 && umur <= 15) {
    print('Anda anak SMP');
  } else if (umur >= 16 && umur <= 18) {
    print('Anda anak SMK');
  } else {
    print('Anda seorang Mahasiswa');
  }
}
