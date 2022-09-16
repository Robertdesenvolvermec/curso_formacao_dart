void main() {
  solution('aba');
}

bool solution(String inputString) {
  String variavelReverse = inputString.split('').reversed.join();

  if (inputString == inputString.split('').reversed.join()) {
    print('|' + inputString + '| é |' + variavelReverse + '|');
    return true;
  } else {
    print('|' + inputString + '| nãe é |' + variavelReverse + '|');
    return false;
  }
}