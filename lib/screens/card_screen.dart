import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';


class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10,),
          CustomCardType2(name: 'Un hermoso paisaje',imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxYx4Mg_WO0ApJ3fnuN2gYNRkhVpqpKHS-GDZz4vDgg-1ylJtDOrjgl20P1ktKx-GS3dY&usqp=CAU',),
          SizedBox(height: 20,),
          CustomCardType2(imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4hOyVZNeC4IKmfm69l9iV0qB85tG5SEvrwowIfwk_rxZlwaiN3PMgFMAVZjnxyloIXzA&usqp=CAU',),
          SizedBox(height: 20,),
          CustomCardType2(imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvcADJ0wkY1ryQgMciGlEukklSin1I-LMD60xMJNzbsE88x8o2C9GZhk4Tzcdb6z7K-Nw&usqp=CAU',),
          SizedBox(height: 100,),
          CustomCardType2(imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3dKRII38DG0i3AHiFrMmlhN76PiDlT90W3Pm0Bx23DGo_y7gDGWtuZAqWc4bIsLeGCtc&usqp=CAU',),
      

        ],
      )
      );
  }
}