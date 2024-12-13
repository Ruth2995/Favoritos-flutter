import 'package:flutter/material.dart';
import 'package:modulos/modelo/modelo.dart';
import '../pantallas/rutas.dart';

class AppRoutes{
  static const initialRoute='home';
  static final menuop=<Menuoptions>[
    // Menuoptions(route: 'home', icono: Icons.home, nombre: 'Principal', pantalla: const Principal()),
    Menuoptions(route: 'mascota', icono: Icons.pets, nombre: 'Mascota favorita', pantalla: const Mascotapreferida()),
    Menuoptions(route: 'comida', icono: Icons.fastfood, nombre: 'Comida favorita', pantalla: const Comidapreferida()),
    Menuoptions(route: 'serie', icono: Icons.tv, nombre: 'Serie favorita', pantalla: const Seriefavorita())
  ];
  static Map<String, Widget Function(BuildContext)>regresarRutas(){
   Map<String, Widget Function(BuildContext)>appR={};
   for(final opcion in menuop){
    appR.addAll({opcion.route: (BuildContext context)=>opcion.pantalla});
   }
   return appR; 
  }
  // static Map<String, Widget Function(BuildContext)> routes=
  //   {
  //     "listview1":(BuildContext context){
  //       return Listview1();
  //     },
  //     "listview2":(BuildContext context){
  //       return Listview2();
  //     },
  //     "home":(BuildContext context)=>Principal()
  //   };
  static Route<dynamic>? generate(RouteSettings rs){
    return MaterialPageRoute(builder: (context){
      return const Principal();
    },);
  }
}

