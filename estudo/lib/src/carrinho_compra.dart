import "dart:io";

//List<String> products = [];

main() {
  List<String> products = [];
  bool condition = true;

  while (condition) {
    print("Adicione o produto:");
    String text = stdin.readLineSync();
    if (text == "sair") {
      print("====PROGRAMA FINALIZADO====");
      condition = false;
    } else if (text == "imprimir") {
      exibirLista(products);
    } else if (text == "apagar") {
      exibirLista(products);
      removerItem(products);
      exibirLista(products);
    } else if (text == "alterar") {
      exibirLista(products);
      alterarItem(products);
    } else {
      products.add(text);
    }
  }
}

void exibirLista(products) {
  print("\n====CARRINHO DE COMPRA====");
  for (var i = 0; i < products.length; i++) {
    print("Item $i - ${products[i]}");
  }
  print("==========================\n");
}

removerItem(products) {
  print("Qual item deseja remover:");
  int item = int.parse(stdin.readLineSync());
  products.removeAt(item);
}

alterarItem(products) {
  print("Qual item deseja alterar:");
  int item = int.parse(stdin.readLineSync());
  print("Novo produto:");
  String text = stdin.readLineSync();
  products[item] = text;
  print("TESTANDO>>>> $products");
  return products;
}
