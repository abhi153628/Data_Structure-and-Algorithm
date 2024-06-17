// ignore_for_file: camel_case_types
class heaper {
  void insert(List<int> arr) {
    int n = arr.length;
    for (var i = (n ~/ 2) - 1; i >= 0; i--) {
      heapfyup(arr, n, i);
    }

    for (var i = n - 1; i >= 0; i--) {
      int temp = arr[0];
      arr[0] = arr[i];
      arr[i] = temp;
      heapfyup(arr, i, 0);
    }
  }

  void heapfyup(List<int> arr, int n, int i) {
    int largest = i;
    int left = 2 * largest + 1;
    int right = 2 * largest + 2;

    if (left < n && arr[left] > arr[largest]) {
      largest = left;
    }
    if (right < n && arr[right] > arr[largest]) {
      largest = right;
    }

    if (largest != i) {
      int temp = arr[i];
      arr[i] = arr[largest];
      arr[largest] = temp;
      heapfyup(arr, n, largest);
    }
  }
}

void main() {
  heaper he = heaper();

  List<int> arr = [10, 11, 12, 6, 5, 7];
  he.insert(arr);
  print(arr);
}