//importações necessárias
import 'package:flutter/material.dart';

//classe DetailBackButton, que inicializa o botão de voltar da tela Details, sendo um widget do 
//tipo Stateless, ou seja, que não sofrerá alterações durante a execução
class DetailBackButton extends StatelessWidget {
  const DetailBackButton({ Key? key }) : super(key: key);

  //widget que gera o botão flutuante de "voltar" na tela Details, dentro do contexto
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      //ao apertar no botão, "pop" no "context" faz com que volte uma posição, ou seja, volte à tela anterior
      onPressed: () => Navigator.pop(context),
      tooltip: "Voltar",
      label: const Text(
        "Voltar"
      ),
      //ícone que será exibido no botão
      icon: const Icon(
        Icons.arrow_back_ios_new_rounded
      ),
    );
  }
}