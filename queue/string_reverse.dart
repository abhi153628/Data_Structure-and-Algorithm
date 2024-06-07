import 'dart:collection';

String reverseString(String input) {
  Queue<String> queue = Queue<String>();
  int i = 0;
  while (i < input.length) {
    queue.addLast(input[i]);
    i++;
  }
  String reversed = '';
  while (queue.isNotEmpty) {
    reversed += queue.removeLast();
  }
  return reversed;
}

void main() {
  String input = 'Hello, World!';
  String reversed = reverseString(input);
  print(reversed); // Output: '!dlroW ,olleH'
}
