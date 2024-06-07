class Node {
  int? data;
  Node? next;

  Node({this.data});
}

class Stack {
  Node? top;

  // Pushing a node onto the stack
  void push(int data) {
    Node newNode = Node(data: data);
    
    if (top == null) {
      top = newNode;
    } else {
      newNode.next = top;
      top = newNode;
    }
  }

  // Removing a node from the stack
  void pop() {
    if (top == null) {
      return;
    }
    top = top?.next;
  }

  // Displaying the stack
  void display() {
    Node? current = top;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  Stack stack = Stack();
  stack.push(2);
  stack.push(3);
  stack.display();
  stack.pop();
  stack.display(); // Added to show the state of the stack after pop
}
