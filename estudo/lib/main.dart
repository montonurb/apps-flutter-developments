import 'package:estudo/src/calculo_idade.dart';
import 'package:estudo/src/carrinho_compra.dart';
import 'package:estudo/src/imc.dart';
import 'package:estudo/src/maps.dart';
main(List<String> args) {
  if(args[0] == 'calculo-idade'){
    calculoIdade();
  } else if(args[0] == 'carrinho-compras'){
    carrinhoCompras();
  } else if(args[0] == 'calculo-imc'){
    calculoImc();
  } else if (args[0] == 'funcao-maps'){
    functionMaps();
  } else{
    print('Não encontrado!');
  }
}