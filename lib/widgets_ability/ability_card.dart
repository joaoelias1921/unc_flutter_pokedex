//importações necessárias
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/AbilityScreenData.dart';
import 'package:unc_flutter_pokedex/widgets_ability/ability_card_background.dart';
import 'package:unc_flutter_pokedex/widgets_ability/ability_card_data.dart';

//classe AbilityCard, que inicializa o Card, sendo um widget do 
//tipo Stateless, ou seja, que não sofrerá alterações durante a execução
class AbilityCard extends StatelessWidget {
  final int id;
  final String name;

  //construtor
  //cada componente da tela tem um id próprio, que é o Key
  const AbilityCard({
    Key? key,
    required this.id,
    required this.name
  }) : super(key: key);

  //função que irá definir a decoração visual do Card
  BoxDecoration getContainerDecoration() => BoxDecoration(
    borderRadius: BorderRadius.circular(24),
    border: Border.all(
      color: Colors.grey.withOpacity(0.24),
      width: 1
    ),
  );

  //widget que retorna o Card própriamente dito, dentro do contexto
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
          //Navigator: navegação entre telas no Android 
          //pushNamed: "vá direto" para a tela informada, sempre levando o contexto em consideração
          Navigator.pushNamed(
            context,
            //rota para abrir a tela "details" ao apertar no Card (onTap)
            "/details",
            //definindo o que vai ser enviado para a tela de detalhes (/details)
            arguments: AbilityScreenData(id, name),
          )
        ),
        //o que será exibido no Card, utilizando a função definida anteriormente para decoração
        child: Container(
          padding: const EdgeInsets.all(7),
          decoration: getContainerDecoration(),
          child: Stack(
            children: [
              AbilityCardBackground(id: id),
              AbilityCardData(name: name),
            ],
          ),
        ),
      ),
    );
  }
}