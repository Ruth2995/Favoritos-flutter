import 'package:flutter/material.dart';

class Tarjetadi extends StatelessWidget{
  final String texto1;
  final String texto;
  const Tarjetadi({super.key, required this.texto, required this.texto1});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1,
          child: Padding(padding: const EdgeInsets.only(left: 20.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(texto),
          ),
          ),
        ),
        Expanded(flex: 2,
          child: Padding(padding: const EdgeInsets.only(left: 20.0),
          child: Align(
            alignment: Alignment.centerRight,
            child:
            Text(texto1),
          ),
          ),
        )
      ],
    );
  }

}