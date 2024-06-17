

class Heap {
  insert(List<int> list) {
    int n = list.length;
    for (var i = (n ~/ 2) - 1; i >= 0; i--) {
      heapyup(list, n, i);
    }
    for (var i = n - 1; i >= 0; i--) {
      int temp = list[0];
      list[0] = list[i];
      list[i] = temp;
      heapyup(list, i, 0);
    }
  }

  heapyup(List<int> list, int n, int i) {
    int largest = i;
    int left = 2 * largest + 1;
    int right = 2 * largest + 2;

    if (left < n && list[left] > list[largest]) {
      largest = left;
    }
    if (right < n && list[right] > list[largest]) {
      largest = right;
    }

    if (largest != i) {
      int temp = list[i];
      list[i] = list[largest];
      list[largest] = temp;
      heapyup(list, n, largest);
    }
  }
}

void main() {
  Heap hoi = Heap();
  List<int> list = [4, 3, 6, 2, 8];
  hoi.insert(list);
  print(list);
}
