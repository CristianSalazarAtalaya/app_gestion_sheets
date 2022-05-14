import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/theme/app_theme.dart';
//import 'package:fl_components/screens/listview1_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final menuOption = AppRoutes.menuOptions;

    return  Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de flutter'),
      ),
      body: ListView.separated(
        itemBuilder: (context, i) => ListTile(
          title:  Text(menuOption[i].name),
          leading:  Icon(menuOption[i].icon,color: AppTheme.primary,),
          onTap: (){
            //final route = MaterialPageRoute(builder: (context) => const Listview1Screen());
            //Navigator.push(context, route); // puedes regresar a la ventana anterior
            //Navigator.pushReplacement(context, route); // elimina la ruta de la ventana anterior.. puede ser usado por ejemplo cuando haces login, no necesitas regresar a la ventana anterior

            Navigator.pushNamed(context, menuOption[i].route);
          },
        ), 
        separatorBuilder: (_,__)=> const Divider(), 
        itemCount: menuOption.length
        )
    );
  }
}