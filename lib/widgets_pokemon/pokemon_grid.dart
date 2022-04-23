import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/PokeModel.dart';
import 'package:unc_flutter_pokedex/widgets_pokemon/pokemon_card.dart';

class PokemonGrid extends StatefulWidget {
  // criando a listagem que irá receber os Pokemon!
  final List<Pokemon> pokemon;
  const PokemonGrid({ 
    Key? key,
    required this.pokemon
    }) : super(key: key);

  @override
  State<PokemonGrid> createState() => _PokemonGridState();
}

class _PokemonGridState extends State<PokemonGrid> {  //QUANDO TIVER "QLQR COISA" extends State<"QLQR COISA">, ESTAMOS INICIANDO O FRONTEND
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

    return GridView.count(    //gridview permite a visualização em grade na tela!
      padding: const EdgeInsets.all(7),   //Insets: marcação a partir da borda
      crossAxisCount: crossAxisCount,   //qtd de colunas
      crossAxisSpacing: 4,    // controla o scroll em linhas da tela
      mainAxisSpacing: 4,     // também relacionado com o scroll
      semanticChildCount: 250,    //como foi chamado 250 no pokeapi, 250 aqui
      childAspectRatio: 200 / 244,    // proporção pro tamanho do card
      physics: const BouncingScrollPhysics(),   //físicas no scroll da página
      children: widget.pokemon    //igual ao child, mas é mais de 1 child
        .map(
          (pokemon) => PokemonCard(   //pra cada pokemon da listagem, vou gerar um pokemonCard
            id: pokemon.id,
            name: pokemon.name,
            image: pokemon.img,
          ),
        )
        .toList(),
    );
  }
}