import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/ItemScreenData.dart';
import 'package:unc_flutter_pokedex/widgets_item/item_card_background.dart';
import 'package:unc_flutter_pokedex/widgets_item/item_card_data.dart';

class ItemCard extends StatelessWidget {
  final int id;
  final String name;

  const ItemCard({   //construtor
    Key? key,       //cada componente da tela tem um id proprio, que é o Key
    required this.id,
    required this.name,
  }): super(key: key);

  BoxDecoration getContainerDecoration() => BoxDecoration(  //define a decoração da caixa do card
    borderRadius: BorderRadius.circular(24),
    border: Border.all(
      color: Colors.grey.withOpacity(0.24),
      width: 1  
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(24),
      child: InkWell(
        borderRadius: BorderRadius.circular(24),
        enableFeedback: true,
        splashColor: Colors.red[50],
        onTap: () => (
          Navigator.pushNamed(    //Navigator: sair de uma tela e ir pra outra no Android, pushNamed: vá direto pra essa tela
            context,
            "/details", //rota pra abrir ao apertar, detalhes do item
            arguments: ItemScreenData(id, name), //definindo o que vai ser enviado pra tela de detalhes (/details)
          )
        ),
        child: Container(
          padding: const EdgeInsets.all(7),
          decoration: getContainerDecoration(),
          child: Stack(
            children: [
              ItemCardBackground(id: id),
              ItemCardData(name: name),
            ],
          ),
        ),       
      ),
    );
  }
}