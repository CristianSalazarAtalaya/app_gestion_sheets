import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children:  [
           const ListTile(
            title: Text('Soy un titulo'),
            leading: Icon(Icons.photo_album_outlined,color: AppTheme.primary,),
            subtitle: Text(' Push, Cámara, Mapas, REST API, SQLite, CRUD, Tokens, Storage, Preferencias de usuario, PlayStore, AppStore, Bloc y más! '),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: ()=>{}, 
                  child: const Text('Cancel')
                  
                  ),
                TextButton(
                  onPressed: ()=>{}, 
                child: const Text('Ok'))
              ],
            ),
          )
        ],
      ),
    );
  }
}