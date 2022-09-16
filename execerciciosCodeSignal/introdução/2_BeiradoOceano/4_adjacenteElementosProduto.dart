void main(List<String> args) {
  List<int> inputArray = [1, 3, 5, 4, 2, 3];

  solution(inputArray);
}

solution(List<int> inputArray) {
  for (var i = 0; i < inputArray.length - 1; i++) {
    int produto = inputArray[i] * inputArray[i + 1];

    if (produto > (inputArray[i + 1] * inputArray[i + 2])) {
      print('$produto é maior');
    }
  }
}
