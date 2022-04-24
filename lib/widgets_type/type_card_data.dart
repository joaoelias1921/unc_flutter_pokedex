//importações necessárias
import 'package:flutter/material.dart';

//classe TypeCardData, que inicializa os dados do Card, sendo um widget do 
//tipo Stateless, ou seja, que não sofrerá alterações durante a execução
class TypeCardData extends StatelessWidget {
  final String name;
  const TypeCardData({ 
    Key? key,
    required this.name,
    }) : super(key: key);

  //widget que retorna os dados do Card, dentro do contexto
  @override
  Widget build(BuildContext context) {
    //coluna, que retornará o nome do Type
    //o tipo Column faz com que os elementos apareçam em ordem, de cima para baixo
    return Column(
      children: [
        //Divider = linha divisória inserida entre os elementos
        const Divider(
          height: 15,
          color: Colors.red,
          thickness: 3,          
        ),
          Text("${name[0].toUpperCase()}${name.substring(1)}",
            style: const TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
              color: Colors.black87
            ),
          ),
      ],
    );
  }
}