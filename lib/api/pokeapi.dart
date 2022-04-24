//importações necessárias
import 'dart:async';
//importando biblioteca http pra conectar com o servidor
import 'package:http/http.dart' as http; 

//funções para retornar os dados requisitados da API na web
class PokeAPI {
  static Future<http.Response> getPokemon() =>
    http.get(Uri.parse("https://pokeapi.co/api/v2/pokemon?limit=250"));
  static Future<http.Response> getType() =>
    http.get(Uri.parse("https://pokeapi.co/api/v2/type"));
  static Future<http.Response> getAbility() =>
    http.get(Uri.parse("https://pokeapi.co/api/v2/ability"));
  static Future<http.Response> getMove() =>
    http.get(Uri.parse("https://pokeapi.co/api/v2/move"));
  static Future<http.Response> getItem() =>
    http.get(Uri.parse("https://pokeapi.co/api/v2/item"));
}
