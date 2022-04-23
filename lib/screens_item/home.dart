import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/api/pokeapi.dart';
import 'package:unc_flutter_pokedex/models/ItemModel.dart';
import 'package:unc_flutter_pokedex/widgets_item/item_list.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Item> item = List.empty();

  @override
  void initState() {
    super.initState();
    getItemFromPokeApi();
  }

  void getItemFromPokeApi() async {
    PokeAPI.getItem().then((response) {
      List<Map<String, dynamic>> data =
          List.from(json.decode(response.body)['results']);
      setState(() {
        item = data.asMap().entries.map<Item>((element) {
          element.value['id'] = element.key + 1;
          return Item.fromJson(element.value);
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
      body: ItemList(item: item),
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
