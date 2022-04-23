import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/screens_ability/details.dart';
import 'package:unc_flutter_pokedex/screens_ability/home.dart';

void main () {
  // chamando o app para execução
  runApp(const App());
}

class App extends StatelessWidget {
  const App({ Key? key }) : super(key: key);

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