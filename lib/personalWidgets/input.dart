import 'package:flutter/material.dart';

class input extends StatelessWidget {
  final String? ht;
  final String? labelT;
  final String? helperT;
  final IconData? pre;
  final IconData? suf;
  final TextInputType? tipo;
  final bool ot;
  final String llaveMapa;
  final Map<String,String> mapa;
  const input({super.key, this.ht, this.labelT, this.helperT, this.pre, this.suf, this.tipo, this.ot=false, required this.llaveMapa, required this.mapa
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      keyboardType: tipo,
      obscureText: ot,
      textCapitalization: TextCapitalization.words,
      onChanged: (value){
        mapa[llaveMapa]=value;
        print(value);
      },
      validator: (value) {
        if(value==null) return "Campo requerido";
        if(llaveMapa=='nombreS' && value.length<6) return 'El nombre debe ser mayor a 5 caracteres'; 
        if(llaveMapa=='edadS'){
          final edad=int.tryParse(value);
          if(int.tryParse(value)==null || edad!<3 || edad>99){
            return 'Debe ser mayor a 3 y menor a 99';
          }
        }
        // return value.length<3 ? 'Faltan carácteres':null;
        
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: ht,
        labelText: labelT,
        helperText: helperT,
        suffix: Icon(suf),
        prefix: Icon(pre)
      ),
    );
  }
}