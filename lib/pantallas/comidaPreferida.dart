import 'package:flutter/material.dart';
import 'package:modulos/personalWidgets/export_widgets.dart';

class Comidapreferida extends StatelessWidget{
  const Comidapreferida({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crema de brócoli'),
      ),
      body: const SingleChildScrollView(
        child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            maxRadius: 110,
            backgroundImage: AssetImage("crema.jpg"),
          ),
          SizedBox(height: 20),
          Padding(padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Tarjetadi(texto: '2 cucharadas de mantequilla o aceite de oliva, 1/4 de cebolla picada finamente, 3 tazas de brócoli (250 g), 5 tazas de caldo de pollo, Queso crema 150 g, 1 diente de ajo, Harina 3 cucharadas', texto1: 'Comienza derritiendo la mantequilla y en ella sofreímos la cebolla junto con el ajo. Cuando agarren color, agrega el brócoli cortado en cachitos y cocina por un minuto extra. Algunas personas también agregan tocino y les gusta freírlo junto los vegetales para darle sabor, pero esto es un paso completamente opcional. Agrega la harina, sal y la pimienta. Agrega un poco del caldo de pollo, tapa y deja cocinar a fuego bajo por 10 minutos hasta que el brócoli esté cocido. Ahora licuamos la mezcla de poco en poco, en una licuadora sin la tapita central para que el vapor pueda salir (y no explote). Agrega la crema o el queso crema y revuelve también. Vierte la mezcla cremosa de brócoli y deja que se caliente por unos 10 minutos más. Cuando la crema ya esté espesa, apaga el fuego y sirve con un poco más de crema, crutones (o bombitos) al gusto. Puedes decorar con unas cuantas hojas de perejil.'),
          )
        ],
      ),
      )
      
    );
  }
  
}