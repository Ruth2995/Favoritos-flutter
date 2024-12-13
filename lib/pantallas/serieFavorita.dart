import 'package:flutter/material.dart';
import 'package:modulos/personalWidgets/export_widgets.dart';

class Seriefavorita extends StatelessWidget{
  const Seriefavorita({super.key});

  @override
  Widget build(BuildContext context) {
    final formkey=GlobalKey<FormState>();
    final Map<String, String> datos={
      'nombreS':'ns',
      'edadS':'es',
    };
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('El Rey: Eterno Monarca'),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Form(
          key: formkey,
          child: Column(
            children: [
              input(ht: 'Nombre de la serie', helperT: 'Solo letras y más de 5 caracteres', suf:Icons.video_library, llaveMapa: 'nombreS', mapa: datos,),
              SizedBox(height: 20,),
              input(ht: 'Edad de la serie', helperT: 'Solo números mayores a 3 y menor a 99', suf: Icons.access_time, llaveMapa: 'edadS', mapa: datos,),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                if(!formkey.currentState!.validate()){
                  print('Formulario incorrecto');
                }else{
                  print(datos);
                }
              }, child: SizedBox(
                width: double.infinity,
                child: Center(
                  child: Text('Enviar'),
                ),
              ))
            ],
          ),
        ),),
      ),
    );
  }

}