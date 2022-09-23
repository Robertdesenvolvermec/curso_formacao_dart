import 'dart:ffi';

void main() {
  String nome = 'laranja';
  double peso = 100.00;
  String corDaFruta = 'Amarelo e Verde';
  String sabor = 'Doce e Cítrica';
  int diasDesdeColheita = 4;
  bool isMadura = funcEstaMaduro(diasDesdeColheita);

  Fruta Uva = Fruta('Uva', 40.0, 'Roxo', 'Doce', 50);
  Uva.printAlimento();
  Uva.estaMadura(50);
  Uva.separarIngredientes();
  Uva.fazerMassa();
  Uva.assar();

  Legume Cenoura = Legume('Cenoura', 100.00, 'laranja', true);

  Nozes CastanhaDoPara =
      Nozes('Castanha do Pará', 20.0, 'marrom claro', 'seca', 30, true, 30.0);
  CastanhaDoPara.printAlimento();
  CastanhaDoPara.estaMadura(20);
  CastanhaDoPara.separarIngredientes();
  CastanhaDoPara.fazerMassa();
  CastanhaDoPara.assar();
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

// classes para criar alimentos com
class Alimento {
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);

  printAlimento() {
    print('Este(a) $nome pesa $peso kg e é da cor $cor');
  }
}

class Fruta extends Alimento implements Bolo {
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(
      String nome, double peso, String cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura})
      : super(nome, peso, cor);

  estaMadura(int diasParaMadura) {
    if (isMadura = diasDesdeColheita >= diasParaMadura) {
      print(
          'A fruta $nome foi colhida a $diasDesdeColheita dias, e precisa de $diasParaMadura dias para poder comer. Ela está madura? $isMadura');
    } else {
      print(
          'A fruta $nome foi colhida a $diasDesdeColheita dias, e precisa de $diasParaMadura dias para poder comer. Ela está madura? $isMadura');
    }
  }

  fazerSuco() {
    print('Você fez um suco de $nome');
  }

  @override
  void separarIngredientes() {
    print('Colher a fruta');
  }

  @override
  void fazerMassa() {
    print('Bater a fruta com a farinha, fermento, açúcar e outros...');
  }

  @override
  void assar() {
    print('Colocar no forno');
  }
}

class Legume extends Alimento implements Bolo {
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

  @override
  void assar() {
    // TODO: implement assar
  }

  @override
  void fazerMassa() {
    // TODO: implement fazerMassa
  }

  @override
  void separarIngredientes() {
    // TODO: implement separarIngredientes
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

  @override
  void fazerMassa() {
    print('Tirar a casca');
    super.fazerMassa();
  }
}

// classes abstratas para criar outros tipos de alimentos
abstract class Bolo {
  //separar os ingredientes
  void separarIngredientes();

  //faça a massa
  void fazerMassa();

  //assar
  void assar();
}
