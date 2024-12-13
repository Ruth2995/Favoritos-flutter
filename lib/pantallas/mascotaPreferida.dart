import 'package:flutter/material.dart';
import 'package:modulos/personalWidgets/export_widgets.dart';

class Mascotapreferida extends StatelessWidget{
  const Mascotapreferida({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nala'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [ 
        SizedBox(height: 15,), 
        Tarjeta2(imagenUrl: "../assets/nala.jpg", texto: 'Nala'),
        SizedBox(height: 15,),
        Tarjeta1(),]
      )
    );

  }
}