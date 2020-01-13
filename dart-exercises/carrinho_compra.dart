import "dart:io";

main(){
  List<String> products = [];
  bool condition = true;
  
  while (condition){
    print("Adicione o produto:");
    String text = stdin.readLineSync();
    if(text == "sair"){
      print("====PROGRAMA FINALIZADO====");
      condition = false;
    } else if (text == "imprimir"){
      print("\n====CARRINHO DE COMPRA====");
      for(var i = 0; i < products.length; i++){
        print("Item $i: ${products[i]}");
      }
      print("==========================\n");
    } else if(text == "apagar"){
      print("\n====CARRINHO DE COMPRA====");
      print("produto(s): $products");
      print("==========================\n");
      print("Remova o produto:");
      String text = stdin.readLineSync();
      products.remove("$text");
      print("\n====CARRINHO DE COMPRA====");
      print("produto(s): $products");
      print("==========================\n");
    } else {
      products.add(text);
      //print(products);
    }

  }
}