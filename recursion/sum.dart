void main() {
  print(findingSum([2, 3, 4], 0));
}

findingSum(List<int> list, int sum) {
  return adding(list, sum, 0);
}

adding(List<int> list, int sum, int index) {
  if (index > list.length - 1) {
    return sum;
  } else {
    return adding(list, sum + list[index], index + 1);
  }
}
