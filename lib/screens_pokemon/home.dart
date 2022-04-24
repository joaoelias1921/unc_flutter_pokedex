//importações necessárias
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/api/pokeapi.dart';
import 'package:unc_flutter_pokedex/models/PokeModel.dart';
import 'package:unc_flutter_pokedex/widgets_pokemon/pokemon_grid.dart';

//classe Home que gera um widget do tipo Stateful, ou seja,
//que sofrerá alterações durante sua execução
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

//classe responsável por inicializar a tela e chamar os métodos
class _HomeState extends State<Home> {
  List<Pokemon> pokemon = List.empty();

  @override
  void initState() {
    super.initState();
    getPokemonFromPokeApi();
  }

  //função responsável por mapear o JSON vindo da API e retornar 
  //cada Pokemon com os dados necessários para exibição, em formato List
  void getPokemonFromPokeApi() async {
    PokeAPI.getPokemon().then((response) {
      List<Map<String, dynamic>> data =
          List.from(json.decode(response.body)['results']);
      setState(() {
        pokemon = data.asMap().entries.map<Pokemon>((element) {
          element.value['id'] = element.key + 1;
          element.value['img'] =
              "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${element.key + 1}.png";
          return Pokemon.fromJson(element.value);
        }).toList();
      });
    });
  }

  //construindo um componente (widget) no contexto de exibição
  //por estar retornando um Scaffold, trata-se de uma tela que será mostrada ao usuário
  @override
  Widget build(BuildContext context) {  
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pokedex"),
      ),
      body: PokemonGrid(pokemon: pokemon),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Share',
        child: const Icon(
          Icons.share_rounded,
        ),
      ),
    );
  }
}
