import 'package:flutter/material.dart';

class Tarjeta1 extends StatelessWidget {
  const Tarjeta1({
    super.key,
  });

  void ventanaAlerta(BuildContext context){
    showDialog(context: context, builder: (context){
      return AlertDialog(
        elevation: 5,
        title: const Text('Ventana emergente'),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        content: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Alimenta bien a tu mascota'),
            Icon(Icons.pets)
          ],
        ),
        actions: [
          TextButton(onPressed: ()=>Navigator.pop(context), child: const Text('Cancelar'))
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(leading: Icon(Icons.wallet),
          title: Text('Dieta Nala'),
          subtitle: Text('Su dieta consiste en comer dos veces al día, donde se le proporciona comida seca para perros y pechuga de pollo desmenuzada y cocida, durante el día tiene su bote de 4litros de agua limpia y fresca, y como snacks se le suele dar brócoli, zanahoria o manzana'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8, bottom: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child: const Text('Cancelar')),
                TextButton(onPressed: (){
                  ventanaAlerta(context);
                }, child: const Text('Aceptar'))
              ],
            ),
          )
        ],
      ),
    );
  }
}