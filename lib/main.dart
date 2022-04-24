//importações necessárias
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/screens_pokemon/details.dart';
import 'package:unc_flutter_pokedex/screens_pokemon/home.dart';

//método main, onde tudo se centraliza e é executado
void main () {
  // chamando o app para execução
  runApp(const App());
}

//classe do App própriamente dito
class App extends StatelessWidget {
  const App({ Key? key }) : super(key: key);

  //widget que retorna a tela principal a ser exibida no início do App
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pokédex',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      //Iniciando o conceito de navegação por rotas
      initialRoute: "/",
      routes: {
        "/": (context) => const Home(),
        // Já criando a rota para exibir os detalher do pokémon
        "/details" : (context) => const Details(),
      },
    );
  }
}