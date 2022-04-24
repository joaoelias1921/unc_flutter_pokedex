//importações necessárias
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/PokeModel.dart';
import 'package:unc_flutter_pokedex/widgets_pokemon/pokemon_card.dart';

//classe PokemonGrid, que inicializa o Grid onde serão exibidos os Pokemon, sendo um widget do 
//tipo Stateless, ou seja, que não sofrerá alterações durante a execução
class PokemonGrid extends StatefulWidget {
  //criando a listagem que irá receber os Pokemon
  final List<Pokemon> pokemon;
  const PokemonGrid({ 
    Key? key,
    required this.pokemon
    }) : super(key: key);

  @override
  State<PokemonGrid> createState() => _PokemonGridState();
}

//iniciando o front-end
class _PokemonGridState extends State<PokemonGrid> {
  @override
  Widget build(BuildContext context) {
    //descobrindo a largura (width) da tela do dispositivo
    final width = MediaQuery.of(context).size.width;  
    //if ternário: dependendo do tamanho da tela, determina o número de colunas da Grid
    final crossAxisCount = 
      (width > 1000)
        ? 5
        : (width > 700)
          ? 4
          : (width > 450)
            ? 3
            : 2;

    //GridView permite a visualização em grade na tela
    return GridView.count(
      padding: const EdgeInsets.all(7),         //EdgeInsets: marcação a partir da borda
      crossAxisCount: crossAxisCount,           //crossAxisCount: conta a quantidade de colunas
      crossAxisSpacing: 4,                      //crossAxisSpacing: controla o scroll em linhas da tela
      mainAxisSpacing: 4,                       //mainAxisSpacing: também relacionado com o scroll e seu espaçamento
      semanticChildCount: 250,                  //semanticChildCount: como foram limitados 250 itens da API, aqui limita-se as children para 250
      childAspectRatio: 200 / 244,              //childAspectRatio: proporção para o tamanho do card
      physics: const BouncingScrollPhysics(),   //physics: propriedades visuais de física aplicada no scroll da página
      children: widget.pokemon                  //children: quando se tem 2 ou mais filhos ou "child"
        .map(
          //para cada Pokemon da listagem, será gerado um PokemonCard
          (pokemon) => PokemonCard(
            id: pokemon.id,
            name: pokemon.name,
            image: pokemon.img,
          ),
        )
        .toList(),
    );
  }
}