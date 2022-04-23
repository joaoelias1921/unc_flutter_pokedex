import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/AbilityModel.dart';
import 'package:unc_flutter_pokedex/widgets_ability/ability_card.dart';

class AbilityGrid extends StatefulWidget {
  // criando a listagem que irá receber as habilidades!
  final List<Ability> ability;
  const AbilityGrid({
    Key? key,
    required this.ability
  }) : super(key: key);

  @override
  State<AbilityGrid> createState() => _AbilityGridState();
}

class _AbilityGridState extends State<AbilityGrid> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    //if ternário, dependendo do tamanho da tela, determina o numero de colunas da grid
    final crossAxisCount = 
      (width > 1000)
        ? 5
        : (width > 700)
          ? 4
          : (width > 450)
            ? 3
            : 2;

    return GridView.count(
      padding: const EdgeInsets.all(7),
      crossAxisCount: crossAxisCount,
      crossAxisSpacing: 4,
      mainAxisSpacing: 4,
      semanticChildCount: 250,
      childAspectRatio: 200 / 244,
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