void main() {
// Definition the label
  NINJA:
  for (int i = 0; i < 3; i++) {
    if (i < 2) {
      print("You are in the loop Ninja!");

      // breaking using the label
      continue NINJA;
    }
    print("You are still not out of the loop");
  }
}
