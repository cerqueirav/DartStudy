import "dart:io";
import 'utils.dart';

const e1 = -999; // "produto_nao_encon";

void menuPrincipal(List<String> estoque) {
  bool sentinel = true;

  while (sentinel) {
    print("\n1 - Cadastrar:");
    print("2 - Excluir");
    print("3 - Buscar");
    print("4 - Listar todos produtos");
    print("5 - Sair\n");

    int opcao = converterParaInteiro(stdin.readLineSync());

    switch (opcao) {
      case 1:
        {
          adicionarProduto(estoque, criarNovoProduto());
          break;
        }
      case 2:
        {
          removerProduto(estoque, criarNovoProduto());
          break;
        }
      case 3:
        {
          buscarProduto(estoque, criarNovoProduto());
          break;
        }
      case 4:
        {
          listarProdutos(estoque);
          break;
        }
      case 5:
        {
          sentinel = false;
          break;
        }
    }
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
  if (retorno != e1) {
    estoque[retorno] = criarNovoProduto();
  }
}

void listarProdutos(List<String> estoque) {
  int index = 0;
  while (index != estoque.length) {
    print("$index - ${estoque[index++]}");
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
  return e1;
}

String criarNovoProduto() {
  print("Informe o nome do produto: ");

  String produto = converterParaString(stdin.readLineSync());

  return produto;
}
