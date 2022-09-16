import 'dart:ffi';

void main() {
  List Robert = ['Robert', 22, 'Gerente de vendas', 1.80, true];

  /* print(Robert.length);
  print(Robert[1]);
  print(Robert.first);
  print(Robert.last);
  Robert.add('180.505.157-10');
  print(Robert.last);
  print(Robert.length); */
  Robert.forEach((i) {
    print(Robert[i]);
  },);
}