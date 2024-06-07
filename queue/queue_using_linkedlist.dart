class Node {
  int? data;
  Node? next;

  Node({this.data});
}

class Queue {
  Node? rear;
  Node? front;

  // Adding a node to the queue
  void enque(int data) {
    Node newNode = Node(data: data);
    if (rear == null) {
      // If the queue is empty, both front and rear point to the new node
      rear = front = newNode;
    } else {
      // Otherwise, add the new node at the end and update rear
      rear?.next = newNode;
      rear = newNode;
    }
  }

  // Removing a node from the queue
  void deque() {
    if (front == null) {
      // If the queue is empty, do nothing
      return;
    }
    // Otherwise, move the front pointer to the next node
    front = front?.next;
    if (front == null) {
      // If the queue becomes empty, set rear to null
      rear = null;
    }
  }

  // Displaying the queue
  void display() {
    Node? current = front;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  Queue q = Queue();
  q.enque(2);
  q.enque(3);
  q.enque(4);
  q.enque(5);
  q.display();
  q.deque();
  q.display(); // Added to show the state of the queue after deque
}
