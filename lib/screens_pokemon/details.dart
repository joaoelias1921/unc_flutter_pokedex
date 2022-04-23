import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/PokemonScreenData.dart';
import 'package:unc_flutter_pokedex/widgets_pokemon/detail_back_button.dart';
import 'package:unc_flutter_pokedex/widgets_pokemon/detail_data.dart';
import 'package:unc_flutter_pokedex/widgets_pokemon/detail_image.dart';
import 'package:unc_flutter_pokedex/widgets_pokemon/detail_title.dart';

class Details extends StatelessWidget {
  const Details({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as PokemonScreenData; //importa os dados dos pokemons da home.dart
    return Scaffold(  //se é uma tela, é um scaffold!!!!
      backgroundColor: Colors.black,
      body: SingleChildScrollView(   //permite que a tela seja scrollable, caso nao caiba tudo sem rolar a tela
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            DetailImage(
              image: arguments.image,
            ),
            DetailTitle(
              id: arguments.id,
              name: arguments.name,
            ),
            DetailData(),
          ],
        ),
      ),
      floatingActionButton: const DetailBackButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}