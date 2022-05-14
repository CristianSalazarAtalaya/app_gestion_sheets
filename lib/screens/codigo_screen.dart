import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CodigoScreen extends StatelessWidget {
  const CodigoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {'codigo_nombre': '123456'};

    return Scaffold(
      appBar: AppBar(
        title: const Text('Crear Codigo'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
            children: [
              const SizedBox(height: 30),
              //Insertamos el id
              CustomInputField(
                labelText: 'Códido',
                helperText: 'Ingresar Codigo',
                hintText: 'Ingresar Código',
                formProperty: 'codigo_nombre',
                formValues: formValues,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                child: const SizedBox(
                  width: double.infinity,
                  child: Center(
                    child: Text('Guardar'),
                  ),
                ),
                onPressed: () {
                  //FocusScope.of(context).requestFocus(FocusNode());
                  FocusManager.instance.primaryFocus?.unfocus();

                  if (!myFormKey.currentState!.validate()) {
                    print('Formulario no valido');
                    return;
                  }
                  print(formValues);
                },
              )
            ],
          )),
        ),
      ),
    );
  }
}
