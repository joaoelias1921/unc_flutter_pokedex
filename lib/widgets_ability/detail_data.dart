//importações necessárias
import 'package:flutter/material.dart';

//classe DetailData, que inicializa o corpo central da tela Details, sendo um widget do 
//tipo Stateless, ou seja, que não sofrerá alterações durante a execução
class DetailData extends StatelessWidget {
  const DetailData({ Key? key }) : super(key: key);

  //widget que retorna os dados e como serão exibidos no corpo central da tela Details, dentro do contexto
  @override
  Widget build(BuildContext context) {
    return Container(
      //constraints: restrições ao widget
      constraints: BoxConstraints(
        //consulta dinamica no contexto, adquirindo a largura (width) da tela do dispositivo
        minWidth: MediaQuery.of(context).size.width,
        minHeight: 500,
      ),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 253, 208, 208),
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
            child: Text("Detalhes!",
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