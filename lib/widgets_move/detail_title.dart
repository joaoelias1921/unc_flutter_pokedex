//importações necessárias
import 'package:flutter/material.dart';

//classe DetailTitle, que inicializa o título da tela Details, sendo um widget do 
//tipo Stateless, ou seja, que não sofrerá alterações durante a execução
class DetailTitle extends StatelessWidget {
  final int id;
  final String name;
  const DetailTitle({ 
    Key? key,
    required this.id,
    required this.name
    }) : super(key: key);

  //widget que retorna os dados e como serão exibidos no título da tela Details, dentro do contexto
  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: Colors.white,
      //label faz com que este texto apareça por conseguinte ao "avatar" informado abaixo
      label: Text(
        //converte a primeira letra do nome para maiúscula (toUpperCase) e junta com o resto do name (substring)
        "${name[0].toUpperCase()}${name.substring(1)}",
        style: const TextStyle(
          fontSize: 24,
          color: Colors.black,
        ),
      ),
      //avatar: irá exibir o ID, tendo como "label" o texto informado acima
      avatar: CircleAvatar(
        child: Text(
          id.toString(),
        ),
      ),
    );
  }
}