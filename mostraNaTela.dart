import 'dart:io';

void main() {
  print('Como se chama?');

  String? userName = stdin.readLineSync();

  if (userName != null) {
    print('Prazer ' + userName);
  } else {
    print('Nome inválido, tente novamente.');
  }
}
