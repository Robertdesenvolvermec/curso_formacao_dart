void main() {
  var seculo = solution(2000);
  print(seculo);
}

int solution(int year) {
  var seculo = (year + 99) ~/ 100;
  return int.parse(seculo.toStringAsFixed(0));
}
