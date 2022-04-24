//importações necessárias
import 'package:flutter/material.dart';

//classe PokemonCardBackground, que inicializa o background do Card, sendo um widget do 
//tipo Stateless, ou seja, que não sofrerá alterações durante a execução
class PokemonCardBackground extends StatelessWidget {
  final int id;
  const PokemonCardBackground({
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
        color: Colors.grey[200],

      ),
    );
  }
}