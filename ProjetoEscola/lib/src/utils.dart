void pularLinha() {
  print("==============================================");
}

bool validarNome(String nome) {
  int tamanho = nome.length;
  if ((tamanho > 20) || (tamanho <= 0)) return false;

  return true;
}

bool validarSexo(String sexo) {
  sexo = sexo.toString().toUpperCase();

  int tamanho = sexo.length;
  if ((tamanho < 1) || (tamanho > 1)) return false;

  if (tamanho == 1) {
    if ((sexo[0] == 'F') || (sexo[0] == 'M') || (sexo[0] == 'O')) return true;
  }

  return false;
}
