import 'package:flutter/material.dart';

class DetailData extends StatelessWidget {
  const DetailData({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: MediaQuery.of(context).size.width,  //consulta dinamica no contexto, pegando a largura (width)
        minHeight: 500,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(
            width: 2,
            color: Colors.grey,
          ),
        ),
        borderRadius: BorderRadius.only( //borderradius.only = apenas uma ou duas bordas especificas serao arredondadas
          topLeft: Radius.circular(71),
          bottomRight: Radius.circular(71),
        ),
      ),
      child: Column(
        children: [],
      ),
    );
  }
}