class Node {
  int? data;
  Node? next;

  Node(this.data);
}

class LinkedList {
  Node? head;
  Node? tail;

  void addnode(int data) {
    Node newnode = Node(data);

    if (head == null) {
      head = newnode;
    } else {
      tail?.next = newnode;
    }
    tail = newnode;
  }

  void printfunction() {
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  void deletefunction(int data) {
    Node? temp = head;
    Node? prev;

    if (temp != null && temp.data == data) {
      head = temp.next; // Changed head
      if (head == null) {
        tail = null; 
      }
      return;
    }

    while (temp != null && temp.data != data) {
      prev = temp;
      temp = temp.next;
    }

    if (temp == null) {
      return; // Data not found in the list
    }

    prev?.next = temp.next;

    if (prev?.next == null) {
      tail = prev; // Update tail if the last node was deleted
    }
  }

  Node? midd() {
    Node? slow = head;
    Node? fast = head;
    while (fast != null && fast.next != null) {
      slow = slow?.next;
      fast = fast.next?.next;
    }
    return slow;
  }
}

void main() {
  LinkedList list = LinkedList();
  list.addnode(10);
  list.addnode(20);
  list.addnode(30);
  list.addnode(40);
  list.addnode(50);
  list.printfunction();
  
  print('Delete node with data 30:');
  list.deletefunction(30);
  list.printfunction();

  print('Middle node:');
  print(list.midd()?.data);
}
