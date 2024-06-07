void main() {
  List<int> stack = [2, 3, 4, 5, 7, 5];
  List<int> list1 = [];
  while (stack.isNotEmpty) {
    int number = stack.removeLast();
    if (number % 2 != 0) {
      list1.add(number);
    }
  }
  while (list1.isNotEmpty) {
    int num = list1.removeLast();
    stack.add(num);
  }

  print(stack);
}
