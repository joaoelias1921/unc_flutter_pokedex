//importações necessárias
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/MoveModel.dart';
import 'package:unc_flutter_pokedex/widgets_move/move_card.dart';

//classe MoveList, que inicializa a Lista onde serão exibidos os Moves, sendo um widget do 
//tipo Stateless, ou seja, que não sofrerá alterações durante a execução
class MoveList extends StatefulWidget {
  // criando a listagem que irá receber os Moves
  final List<Move> move;
  const MoveList({ 
    Key? key,
    required this.move
    }) : super(key: key);

  @override
  State<MoveList> createState() => _MoveListState();
}

//iniciando o front-end
class _MoveListState extends State<MoveList> {
  @override
  Widget build(BuildContext context) {
    //ListView permite a visualização em lista na tela
    return ListView(
      padding: const EdgeInsets.all(7),         //EdgeInsets: marcação a partir da borda
      physics: const BouncingScrollPhysics(),   //physics: propriedades visuais de física aplicada no scroll da página
      children: widget.move                     //children: quando se tem 2 ou mais filhos ou "child"
        .map(
          //para cada Move da listagem, será gerado um MoveCard
          (move) => MoveCard(
            id: move.id,
            name: move.name,
          ),
        )
        .toList(),
    );
  }
}