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
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(
            child: Text("teste",
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
                color: Colors.black87
              ),
              textAlign: TextAlign.center,
            ),            
          ),
        ],
      ),
    );
  }
}