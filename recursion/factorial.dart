void main() {
  var dd = Fact(7);
  print(dd);
}

int Fact(int n) {
if (n == 1) {
    return 1;
  } else {
    return n * Fact(n - 1);
  }
}
