//importações necessárias
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/ItemModel.dart';
import 'package:unc_flutter_pokedex/widgets_item/item_card.dart';

//classe ItemList, que inicializa a Lista onde serão exibidos os Itens, sendo um widget do 
//tipo Stateless, ou seja, que não sofrerá alterações durante a execução
class ItemList extends StatefulWidget {
  // criando a listagem que irá receber os itens
  final List<Item> item;
  const ItemList({ 
    Key? key,
    required this.item
    }) : super(key: key);

  @override
  State<ItemList> createState() => _ItemListState();
}

//iniciando o front-end
class _ItemListState extends State<ItemList> {
  @override
  Widget build(BuildContext context) {
    //ListView permite a visualização em lista na tela
    return ListView(
      padding: const EdgeInsets.all(7),         //EdgeInsets: marcação a partir da borda
      physics: const BouncingScrollPhysics(),   //physics: propriedades visuais de física aplicada no scroll da página
      children: widget.item                     //children: quando se tem 2 ou mais filhos ou "child"
        .map(
          //para cada Item da listagem, será gerado um ItemCard
          (item) => ItemCard(   
            id: item.id,
            name: item.name,
          ),
        )
        .toList(),
    );
  }
}