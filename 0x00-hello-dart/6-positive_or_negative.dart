void main(List<String> args) {
  String number = args[0];
  int n = int.parse(number);

  if (n > 0) {
    print('$n is positive');
  } else if (n == 0) {
    print('$n is zero');
  } else {
    print('$n is negative');
  }
}
