import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/AbilityModel.dart';
import 'package:unc_flutter_pokedex/widgets_ability/ability_card.dart';

class AbilityList extends StatefulWidget {
  // criando a listagem que irá receber as habilidades!
  final List<Ability> ability;
  const AbilityList({
    Key? key,
    required this.ability
  }) : super(key: key);

  @override
  State<AbilityList> createState() => _AbilityListState();
}

class _AbilityListState extends State<AbilityList> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    //if ternário, dependendo do tamanho da tela, determina o numero de colunas da lista
    final crossAxisCount = 
      (width > 1000)
        ? 5
        : (width > 700)
          ? 4
          : (width > 450)
            ? 3
            : 2;

    return ListView(
      padding: const EdgeInsets.all(7),
      semanticChildCount: 250,
      physics: const BouncingScrollPhysics(),
      children: widget.ability
        .map(
          (ability) => AbilityCard(
            id: ability.id,
            name: ability.name
          ),
        )
        .toList(),
    );
  }
}