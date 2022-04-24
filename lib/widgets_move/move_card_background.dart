//importações necessárias
import 'package:flutter/material.dart';

//classe MoveCardBackground, que inicializa o background do Card, sendo um widget do 
//tipo Stateless, ou seja, que não sofrerá alterações durante a execução
class MoveCardBackground extends StatelessWidget {
  final int id;
  const MoveCardBackground({
    Key? key,
    required this.id
    }) : super(key: key);

  //widget que retorna os dados e como serão exibidos no background do Card, dentro do contexto
  @override
  Widget build(BuildContext context) {
    return Text(
      "$id",
      style: TextStyle(
        fontSize: 101,
        fontWeight: FontWeight.bold,
        color: Colors.red[200],

      ),
    );
  }
}