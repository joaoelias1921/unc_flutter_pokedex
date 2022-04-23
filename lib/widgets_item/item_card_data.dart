import 'package:flutter/material.dart';

class ItemCardData extends StatelessWidget {
  final String name;
  const ItemCardData({ 
    Key? key,
    required this.name,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(    //coluna, que vai ter o nome do Item
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