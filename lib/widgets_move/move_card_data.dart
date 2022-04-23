import 'package:flutter/material.dart';

class MoveCardData extends StatelessWidget {
  final String name;
  const MoveCardData({ 
    Key? key,
    required this.name,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(    //coluna, que vai ter o nome do Move
      children: [
        const Divider(),
          Text("${name[0].toUpperCase()}${name.substring(1)}",
            style: const TextStyle(
              fontSize: 21,
              color: Colors.black87
            ),
          ),
      ],
    );
  }
}