import 'dart:async';
import 'package:http/http.dart' as http; //importando biblioteca http pra conectar com o servidor

class PokeAPI {
  static Future<http.Response> getPokemon() =>
      http.get(Uri.parse("https://pokeapi.co/api/v2/pokemon?limit=250"));
}
