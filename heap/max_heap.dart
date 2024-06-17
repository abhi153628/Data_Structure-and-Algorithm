
class maxheap {
  List<int> heap = [];

  void insert(List<int> arr) {
    for (var i = 0; i < arr.length; i++) {
      heap.add(arr[i]);
      heapup();
    }
  }

  void heapup() {
    int currentindex = heap.length - 1;
    while (currentindex > 0) {
      int parentindex = (currentindex - 1) ~/ 2;
      if (heap[currentindex] > heap[parentindex]) {
        swap(currentindex, parentindex);
        currentindex = parentindex;
      } else {
        break;
      }
    }
  }

  void remove() {
    int minvalue = heap.removeLast();

    heap[0] = minvalue;
    heapsouwn(0);
  }

  void heapsouwn(int currentindex) {
    int minvalue = currentindex;

    int lefindex = 2 * currentindex + 1;
    int rightindex = 2 * currentindex + 2;

    if (lefindex < heap.length && heap[lefindex] > heap[minvalue]) {
      minvalue = lefindex;
    }
    if (rightindex < heap.length && heap[rightindex] > heap[minvalue]) {
      minvalue = rightindex;
    }

    if (currentindex != minvalue) {
      swap(currentindex, minvalue);
      heapsouwn(minvalue);
    }
  }

  void swap(int currentindex, int parentindex) {
    int temp = heap[currentindex];
    heap[currentindex] = heap[parentindex];
    heap[parentindex] = temp;
  }
}

void main() {
  maxheap max = maxheap();
  max.insert([2, 4, 90, 3, 421, 56, 89]);
  max.remove();
  print(max.heap);
}
