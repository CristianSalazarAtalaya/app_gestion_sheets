import 'package:flutter/material.dart';

class ProyectoScreen extends StatelessWidget {
  const ProyectoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'proyecto_id': '1',
      'proyecto_nombre': 'Lima'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Crear Codigo'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          key: myFormKey,
          child: Form(
              child: Column(
            children: [
              //Insertamos el id

              //insertamos el nombre
            ],
          )),
        ),
      ),
    );
  }
}
