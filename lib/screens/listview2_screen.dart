import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
   final options = const ['Semana 1 de PapiR','Semana 2 de PapiR','Semana 3 de PapiR','Semana 4 de PapiR','Semana 5 de PapiR','Semana 6 de PapiR'];
  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 2'),
      ),
      body: ListView.separated(
        //itemBuilder: (context, index) => Text(options[index]), 
        itemBuilder: (context, i) => ListTile(
          title: Text(options[i]),
          trailing: const Icon(Icons.arrow_forward_ios_outlined,color: AppTheme.primary),

          onTap: (){
            final game = options[i];
            // ignore: avoid_print
            print(game);
          },
        ),
          
        separatorBuilder: (_,__)=> const Divider(), 
        itemCount: options.length
        )

    );
  }
}