//importações necessárias
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/api/pokeapi.dart';
import 'package:unc_flutter_pokedex/models/MoveModel.dart';
import 'package:unc_flutter_pokedex/widgets_move/move_list.dart';

//classe Home que gera um widget do tipo Stateful, ou seja,
//que sofrerá alterações durante sua execução
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

//classe responsável por inicializar a tela e chamar os métodos
class _HomeState extends State<Home> {
  List<Move> move = List.empty();

  @override
  void initState() {
    super.initState();
    getMoveFromPokeApi();
  }

  //função responsável por mapear o JSON vindo da API e retornar 
  //cada Move com os dados necessários para exibição, em formato List
  void getMoveFromPokeApi() async {
    PokeAPI.getMove().then((response) {
      List<Map<String, dynamic>> data =
          List.from(json.decode(response.body)['results']);
      setState(() {
        move = data.asMap().entries.map<Move>((element) {
          element.value['id'] = element.key + 1;
          return Move.fromJson(element.value);
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
      body: MoveList(move: move),
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
