import "dart:io";
import "Utils.dart";

const ERRO1 = -999; // "PRODUTO_NAO_ENCONTRADO";

main() {
  List<String> estoque = [];

  String produto = criarNovoProduto();

  // Adiciona um novo produto ao carrinho
  adicionarProduto(estoque, produto);

  // Realiza-se a listagem dos produtos
  listarProdutos(estoque);

  String produto2 = criarNovoProduto();

  // Realiza-se a busca de um produto
  if (buscarProduto(estoque, produto2) != ERRO1) {
    print("Produto localizado!\n");
  } else {
    print("Produto não localizado!\n");
  }
}

void adicionarProduto(List<String> estoque, String produto) {
  estoque.add(produto);
}

void removerProduto(List<String> estoque, String produto) {
  estoque.remove(produto);
}

void atualizarProduto(List<String> estoque, String produto) {
  int retorno = buscarProduto(estoque, produto);
  if (retorno != ERRO1) {
    estoque[retorno] = criarNovoProduto();
  }
}

void listarProdutos(List<String> estoque) {
  int index = 0;
  while (index != estoque.length) {
    print(estoque[index++]);
  }
}

int buscarProduto(List<String> estoque, String produto) {
  int index = 0;
  while (index != estoque.length) {
    if (estoque[index] == produto) {
      return index;
    } else {
      index++;
    }
  }
  return ERRO1;
}

String criarNovoProduto() {
  print("Informe o nome do produto: ");

  String produto = converterParaString(stdin.readLineSync());

  return produto;
}
