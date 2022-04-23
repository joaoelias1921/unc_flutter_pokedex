import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/ItemModel.dart';
import 'package:unc_flutter_pokedex/widgets_item/item_card.dart';

class ItemList extends StatefulWidget {
  // criando a listagem que irá receber os Pokemon!
  final List<Item> item;
  const ItemList({ 
    Key? key,
    required this.item
    }) : super(key: key);

  @override
  State<ItemList> createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {  //QUANDO TIVER "QLQR COISA" extends State<"QLQR COISA">, ESTAMOS INICIANDO O FRONTEND
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
      children: widget.item  //igual ao child, mas é mais de 1 child
        .map(
          (item) => ItemCard(   //pra cada item da listagem, vou gerar um ItemCard
            id: item.id,
            name: item.name,
          ),
        )
        .toList(),
    );
  }
}