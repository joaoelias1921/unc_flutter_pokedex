//importações necessárias
import 'package:flutter/material.dart';

//classe DetailImage, que inicializa a imagem a ser exibida na tela Details, sendo um widget do 
//tipo Stateless, ou seja, que não sofrerá alterações durante a execução
class DetailImage extends StatelessWidget {
  final String image;
  const DetailImage({ 
    Key? key,
    required this.image 
    }) : super(key: key);

  //widget que retorna a imagem e como será exibida na tela Details, dentro do contexto
  @override
  Widget build(BuildContext context) {
    return Container(
      //constraints: restrições ao widget
      constraints: const BoxConstraints(
        maxHeight: 500
      ),
      color: Colors.black,
      child: Center(
        child: Stack(
          children: [
            Container(
              height: 500,
              width: 500,
              decoration: const BoxDecoration(
                color: Colors.white60,
                shape: BoxShape.circle,                
              ),
            ),
            Image.network(
              image,
              fit: BoxFit.contain,
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }
}