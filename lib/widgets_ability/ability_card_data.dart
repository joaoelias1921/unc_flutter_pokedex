import 'package:flutter/material.dart';

class AbilityCardData extends StatelessWidget {
  final String name;
  const AbilityCardData({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        Text("${name[0].toUpperCase()}${name.substring(1)}",
          style: const TextStyle(
            fontSize: 21,
            color: Colors.black87
          ),
        ),
      ]
    );
  }
}