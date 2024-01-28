void main() {
  print(PerulanganNormal(10));
  print(PerulanganRecursive(10));
}

int PerulanganNormal(int value) {
  var result = 1;
  for (var i = 1; i <= value; i++) {
    result *= i;
  }
  return result;
}

int PerulanganRecursive(int value) {
  if (value == 1) {
    return 1;
  } else {
    return value * PerulanganRecursive(value - 1);
  }
}
