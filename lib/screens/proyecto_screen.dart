import 'package:fl_components/widgets/custom_input_field.dart';
import 'package:flutter/material.dart';

class ProyectoScreen extends StatelessWidget {
  const ProyectoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'proyecto_id': 'Seleccionar',
      'proyecto_nombre': 'Lima'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Crear Proyecto'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          key: myFormKey,
          child: Form(
              child: Column(
            children: [
              //Insertamos el id
              const SizedBox(height: 30),
              DropdownButtonFormField<String>(
                value: 'Seleccionar',
                items: const [
                  DropdownMenuItem(
                      child: Text('Seleccionar'), value: 'Seleccionar'),
                  DropdownMenuItem(child: Text('Obra1'), value: 'Obra1'),
                  DropdownMenuItem(child: Text('Obra2'), value: 'Obra2'),
                  DropdownMenuItem(child: Text('Obra3'), value: 'Obra3')
                ],
                onChanged: (value) {
                  print(value);
                  formValues['proyecto_id'] = value ?? 'Seleccionar';
                },
              ),

              const SizedBox(height: 30),
              //insertamos el nombre
              CustomInputField(
                labelText: 'Proyecto',
                helperText: 'Ingresar nombre del Proyecto',
                hintText: 'Ingresar Proyecto',
                formProperty: 'proyecto_nombre',
                formValues: formValues,
              ),
            ],
          )),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add_outlined),
          onPressed: () {
            if (!myFormKey.currentState!.validate()) {
              print('Formulario no valido');
              return;
            }
            //FocusManager.instance.primaryFocus?.unfocus();//
            print(formValues);
          }),
    );
  }
}
