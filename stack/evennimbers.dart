void main() {
  List<int> stack = [2, 3, 4, 5];
  List<int> helper = [];
  while (stack.isNotEmpty) {
    int numbers = stack.removeLast();
    if (numbers % 2 != 0) {
      helper.add(numbers);
      
    }
  }
  while (helper.isNotEmpty) {
    int nums=helper.removeLast();
    stack.add(nums);
    
  }
  print(stack);
}
