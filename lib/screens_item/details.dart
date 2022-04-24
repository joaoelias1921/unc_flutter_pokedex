//importações necessárias
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/ItemScreenData.dart';
import 'package:unc_flutter_pokedex/widgets_item/detail_back_button.dart';
import 'package:unc_flutter_pokedex/widgets_item/detail_data.dart';
import 'package:unc_flutter_pokedex/widgets_item/detail_title.dart';

//classe Details que gera um widget do tipo Stateless, ou seja,
//que não sofrerá alterações durante sua execução
class Details extends StatelessWidget {
  const Details({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //importa os dados dos itens da home.dart, como "arguments"
    final arguments = ModalRoute.of(context)!.settings.arguments as ItemScreenData;
    //gerando uma tela (Scaffold)
    return Scaffold(  
      backgroundColor: Colors.black,
      //permite que a tela seja scrollable (rolável), caso os dados ultrapassem os limites da tela
      //além disso, exibe a tela Details, com suas devidas formatações e dados
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            DetailTitle(
              id: arguments.id,
              name: arguments.name,
            ),
            DetailData(),
          ],
        ),
      ),
      //botão flutuante que aparece na tela
      floatingActionButton: const DetailBackButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}