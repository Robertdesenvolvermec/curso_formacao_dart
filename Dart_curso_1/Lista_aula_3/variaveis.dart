void main() {
  List<int> idade = [22, 33, 4, 7];

  print('Olá, mundo!');


  for(var i = 0; i < idade.length - 1; i++){
    if(idade[i] > idade[i + 1] && idade[i + 1] != null){
      print('${idade[i]} é maior que ${idade[i + 1]}');
    } else {
      print('${idade[i]} NÃAAO é maior que ${idade[i + 1]}');
    }
  }
}