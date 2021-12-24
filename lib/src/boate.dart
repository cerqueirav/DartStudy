import 'dart:io';

void main() {
  runApp();
}

runApp() {
  var idade = stdin.readLineSync();
  entrarNaBoate(idade);
}

void entrarNaBoate(var text) {
  var idade = converterParaInteiro(text);
  if (idadeEhValida(idade)) {
    if (idadeEhPermitida(idade))
      print("[OK] - Cliente autorizado! ");
    else
      print("[X] - Cliente nao autorizado, pois, eh menor de idade!");
  } else {
    print("[X] - Idade invalida!");
  }
}

bool idadeEhPermitida(int idade) {
  if (idade >= 18) return true;

  return false;
}

bool idadeEhValida(int idade) {
  if ((idade < 0) | (idade > 110)) return false;

  return true;
}

int converterParaInteiro(var idadeString) {
  return (int.parse(idadeString));
}
