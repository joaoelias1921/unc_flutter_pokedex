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
        color: Colors.white,
        border: Border(
          top: BorderSide(
            width: 2,
            color: Colors.grey,
          ),
        ),
        //borderradius.only: apenas as bordas informadas serão alteradas
        borderRadius: BorderRadius.only( 
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