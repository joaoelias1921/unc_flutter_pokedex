//importações necessárias
import 'package:flutter/material.dart';

//classe PokemonCardData, que inicializa os dados do Card, sendo um widget do 
//tipo Stateless, ou seja, que não sofrerá alterações durante a execução
class PokemonCardData extends StatelessWidget {
  final String name;
  final String image;
  const PokemonCardData({ 
    Key? key,
    required this.name,
    required this.image 
    }) : super(key: key);

  //widget que retorna os dados do Card, dentro do contexto
  @override
  Widget build(BuildContext context) {
    //coluna, que retornará o nome e a imagem do Pokemon
    //o tipo Column faz com que os elementos apareçam em ordem, de cima para baixo
    return Column(
      children: [
        //Expanded faz com que a imagem seja dinâmica, ou seja, se expanda conforme a tela do dispositivo
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(11),
            //image.network = a imagem vem da web (network), ou seja, da PokeAPI
            child: Image.network(   
              image,
              fit: BoxFit.contain,
              alignment: Alignment.bottomRight,
            ),
          ),
        ),
        //Divider = linha divisória inserida entre os elementos
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