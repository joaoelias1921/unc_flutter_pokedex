import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/PokemonScreenData.dart';
import 'package:unc_flutter_pokedex/widgets/pokemon_card_background.dart';
import 'package:unc_flutter_pokedex/widgets/pokemon_card_data.dart';

class PokemonCard extends StatelessWidget {
  final int id;
  final String name;
  final String image;

  const PokemonCard({   //construtor
    Key? key,       //cada componente da tela tem um id proprio, que é o Key
    required this.id,
    required this.name,
    required this.image,
  }): super(key: key);

  BoxDecoration getContainerDecoration() => BoxDecoration(  //define a decoração da caixa do card
    borderRadius: BorderRadius.circular(24),
    border: Border.all(
      color: Colors.grey.withOpacity(0.24),
      width: 1  
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(24),
      child: InkWell(
        borderRadius: BorderRadius.circular(24),
        enableFeedback: true,
        splashColor: Colors.red[50],
        onTap: () => (
          Navigator.pushNamed(    //Navigator: sair de uma tela e ir pra outra no Android, pushNamed: vá direto pra essa tela quando voltar
            context,
            "/details", //rota pra quando voltar ao app
            arguments: PokemonScreenData(id, name, image),
          )
        ),
        child: Container(
          padding: const EdgeInsets.all(7),
          decoration: getContainerDecoration(),
          child: Stack(
            children: [
              PokemonCardBackground(id: id),
              PokemonCardData(name: name, image: image),
            ],
          ),
        ),       
      ),
    );
  }
}