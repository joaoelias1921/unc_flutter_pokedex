import 'package:flutter/material.dart';

class PokemonCardData extends StatelessWidget {
  final String name;
  final String image;
  const PokemonCardData({ 
    Key? key,
    required this.name,
    required this.image 
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(    //coluna, que vai ter o nome e a imagem do pokemon, é coluna pois a imagem fica em cima do nome
      children: [
        Expanded(   //faz com que a imagem seja dinamica, se expanda conforme a tela
          child: Padding(
            padding: const EdgeInsets.all(11),
            child: Image.network(   //image.network = pq a imagem vai vir do pokeAPI, ou seja, da web
              image,
              fit: BoxFit.contain,
              alignment: Alignment.bottomRight,
            ),
          ),
        ),
        const Divider(),
          Text("${name[0].toUpperCase()}${name.substring(1)}",
            style: const TextStyle(
              fontSize: 21,
              color: Colors.black87
            ),
          ),
      ],
    );
  }
}