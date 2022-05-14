import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);
  
  void displayDialogIOS(BuildContext context){
    showCupertinoDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context){
        return  CupertinoAlertDialog(
          title: const Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
               Text('Este es el contenido de una columna'),
               SizedBox(height: 10),
               FlutterLogo(size: 100)
            ],
          ),
          actions: [
            TextButton(
              onPressed: ()=> Navigator.pop(context), 
              child: const Text('Cancelar',style: TextStyle(color: Colors.red),)
              ),
            TextButton(
              onPressed: ()=> Navigator.pop(context), 
              child: const Text('Ok'))
          ]
        );
      }
    );
  }

  void displayDialogAndroid(BuildContext context){
    showDialog(
      barrierDismissible: false, // me permite cerrar dialog si le doy click fuera del mensaje
      context: context, 
      builder: (context){
        return AlertDialog(
          elevation: 5,
          title: const Text('Titulo'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(15)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
               Text('Este es el contenido de una columna'),
               SizedBox(height: 10),
               FlutterLogo(size: 100)
            ],
          ),
          actions: [
            TextButton(
              onPressed: ()=> Navigator.pop(context), 
              child: const Text('Cancelar'))

          ],
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: ElevatedButton(
           style: ElevatedButton.styleFrom(
              //primary: Colors.indigo,
              //shape: const StadiumBorder(),
              //elevation: 0
           ),
           onPressed: ()=>Platform.isAndroid //validamos que plataforma es
           ? displayDialogAndroid(context)
           : displayDialogIOS(context), 

           //personalizamos la presentacion del boton
           child: const Padding(
             padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 15),
             child:  Text('Mostrar alerta',style: TextStyle(fontSize: 16),),
           )
           )
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () {
          Navigator.pop(context);
        }
      ),
    );
  }
}