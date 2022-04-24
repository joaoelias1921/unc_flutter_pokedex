//importações necessárias
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/TypeModel.dart';
import 'package:unc_flutter_pokedex/widgets_type/type_card.dart';

//classe TypeList, que inicializa a Lista onde serão exibidos os Types, sendo um widget do 
//tipo Stateless, ou seja, que não sofrerá alterações durante a execução
class TypeList extends StatefulWidget {
  // criando a listagem que irá receber os Types
  final List<Type> type;
  const TypeList({ 
    Key? key,
    required this.type
    }) : super(key: key);

  @override
  State<TypeList> createState() => _TypeListState();
}

//iniciando o front-end
class _TypeListState extends State<TypeList> {
  @override
  Widget build(BuildContext context) {
    //ListView permite a visualização em lista na tela
    return ListView(
      padding: const EdgeInsets.all(7),         //EdgeInsets: marcação a partir da borda
      physics: const BouncingScrollPhysics(),   //physics: propriedades visuais de física aplicada no scroll da página
      children: widget.type                     //children: quando se tem 2 ou mais filhos ou "child"
        .map(
          //para cada Type da listagem, será gerado um TypeCard
          (type) => TypeCard(
            id: type.id,
            name: type.name,
          ),
        )
        .toList(),
    );
  }
}