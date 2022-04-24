//importações necessárias
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/AbilityModel.dart';
import 'package:unc_flutter_pokedex/widgets_ability/ability_card.dart';

//classe AbilityList, que inicializa a Lista onde serão exibidas as Habilidades, sendo um widget do 
//tipo Stateless, ou seja, que não sofrerá alterações durante a execução
class AbilityList extends StatefulWidget {
  // criando a listagem que irá receber as habilidades
  final List<Ability> ability;
  const AbilityList({
    Key? key,
    required this.ability
  }) : super(key: key);

  @override
  State<AbilityList> createState() => _AbilityListState();
}

//iniciando o front-end
class _AbilityListState extends State<AbilityList> {
  @override
  Widget build(BuildContext context) {
    //ListView permite a visualização em lista na tela
    return ListView(
      padding: const EdgeInsets.all(7),         //EdgeInsets: marcação a partir da borda
      physics: const BouncingScrollPhysics(),   //physics: propriedades visuais de física aplicada no scroll da página
      children: widget.ability                  //children: quando se tem 2 ou mais filhos ou "child"
        .map(
          //para cada Ability da listagem, será gerado um AbilityCard
          (ability) => AbilityCard(
            id: ability.id,
            name: ability.name
          ),
        )
        .toList(),
    );
  }
}