import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/TypeModel.dart';
import 'package:unc_flutter_pokedex/widgets_type/type_card.dart';

class TypeList extends StatefulWidget {
  // criando a listagem que irá receber os Types!
  final List<Type> type;
  const TypeList({ 
    Key? key,
    required this.type
    }) : super(key: key);

  @override
  State<TypeList> createState() => _TypeListState();
}

class _TypeListState extends State<TypeList> {  //QUANDO TIVER "QLQR COISA" extends State<"QLQR COISA">, ESTAMOS INICIANDO O FRONTEND
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;  //descobre a largura(width) da tela do dispositivo
    //if ternário, dependendo do tamanho da tela, determina o numero de colunas da grid
    final crossAxisCount = 
      (width > 1000)
        ? 5
        : (width > 700)
          ? 4
          : (width > 450)
            ? 3
            : 2;

    return ListView(    //gridview permite a visualização em grade na tela!
      padding: const EdgeInsets.all(7),   //Insets: marcação a partir da borda
      semanticChildCount: 250,    //como foi chamado 250 no pokeapi, 250 aqui
      physics: const BouncingScrollPhysics(),   //físicas no scroll da página
      children: widget.type    //igual ao child, mas é mais de 1 child
        .map(
          (type) => TypeCard(   //pra cada type da listagem, vou gerar um TypeCard
            id: type.id,
            name: type.name,
          ),
        )
        .toList(),
    );
  }
}