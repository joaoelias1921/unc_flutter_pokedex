import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/api/pokeapi.dart';
import 'package:unc_flutter_pokedex/models/MoveModel.dart';
import 'package:unc_flutter_pokedex/widgets_move/move_list.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Move> move = List.empty();

  @override
  void initState() {
    super.initState();
    getMoveFromPokeApi();
  }

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

  @override
  Widget build(BuildContext context) {  //construindo um componente
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
