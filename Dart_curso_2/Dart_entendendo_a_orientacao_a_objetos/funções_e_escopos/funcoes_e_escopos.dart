import 'dart:ffi';

void main() {
  String nome = 'laranja';
  double peso = 100.00;
  String corDaFruta = 'Amarelo e Verde';
  String sabor = 'Doce e Cítrica';
  int diasDesdeColheita = 4;
  bool isMadura = funcEstaMaduro(diasDesdeColheita);

  Fruta fruta1 = Fruta('Uva', 40.0, 'Roxo', 'Doce', 40);

  fruta1.estaMadura(20);
  fruta1.fazerSuco();
}

void funcMostraFruta(String nome, int dias, {double? kg}) {
  if (dias >= 30) {
    if (kg != null) {
      if (dias >= 30) {
        return print('A $nome está com o $kg' + 'kg' + ' e está madura');
      } else {
        return print('A $nome está com o $kg' + 'kg' + ' e NÂO está madura');
      }
    } else {
      return print('A $nome está madura');
    }
  } else {
    if (kg != null) {
      if (dias >= 30) {
        return print('A $nome está com o $kg' + 'kg' + ' e está madura');
      } else {
        return print('A $nome está com o $kg' + 'kg' + ' e NÂO está madura');
      }
    } else {
      return print('A $nome NÂO está madura');
    }
  }
}

bool funcEstaMaduro(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}

class Alimento {
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);

  printAlimento() {
    print('Este(a) $nome pesa $peso kg e é $cor');
  }
}

class Fruta extends Alimento {
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(
      String nome, double peso, String cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura})
      : super(nome, peso, cor);

  estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print(
        'A fruta $nome foi colhida a $diasDesdeColheita dias, e precisa de $diasParaMadura dias para poder comer. Ela está madura? $isMadura');
  }

  fazerSuco() {
    print('Você fez um suco de $nome');
  }
}

class Legume extends Alimento {
  bool isPrecisaCozinhar;

  Legume(String nome, double peso, String cor, this.isPrecisaCozinhar)
      : super(nome, peso, cor);

  cozinhar() {
    if (isPrecisaCozinhar = true) {
      print('O $nome está cozinhando para poder comer, aguarde!');
    } else {
      print('O $nome não precisa cozinhar, pode comer!');
    }
  }
}

class Citricas extends Fruta {
  Double nivelAzedo;

  Citricas(
      {required String nome,
      required double peso,
      required String cor,
      required String sabor,
      required int diasDesdeColheita,
      required this.nivelAzedo})
      : super(nome, peso, cor, sabor, diasDesdeColheita);

  existeRefri() {
    if (nivelAzedo == true) {
      print('Existe refrigerante de $nome');
    } else {
      print('NÃO existe refri de $nome');
    }
  }
}

class Nozes extends Fruta {
  double porcentagemOleoNatural;

  Nozes(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, bool isMadura, this.porcentagemOleoNatural)
      : super(nome, peso, cor, sabor, diasDesdeColheita);
}
