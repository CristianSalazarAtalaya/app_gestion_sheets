import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Miguel',
      'last_name': 'Laufi',
      'email': 'miguel.laufi@hotmail.com',
      'password': '123456',
      'role': 'Admin'
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs y Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  CustomInputField(
                    labelText: 'Nombre',
                    helperText: 'Ingresar 3 letras',
                    hintText: 'Ingresar su nombre',
                    formProperty: 'first_name',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 30),
                  CustomInputField(
                    labelText: 'Apellido',
                    helperText: 'Apellido',
                    hintText: 'Ingresar apellido',
                    formProperty: 'last_name',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 30),
                  CustomInputField(
                    labelText: 'Correo',
                    helperText: 'Ingrese su correo',
                    hintText: 'Ingresar su correo',
                    emailAddress: TextInputType.emailAddress,
                    formProperty: 'email',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 30),
                  CustomInputField(
                    labelText: 'Contraseña',
                    helperText: 'Ingrese su contraseña',
                    hintText: 'Ingresar su contraseña',
                    obcureText: true,
                    formProperty: 'password',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 30),
                  DropdownButtonFormField<String>(
                    value: 'Admin',
                    items: const [
                      DropdownMenuItem(child: Text('Admin'), value: 'Admin'),
                      DropdownMenuItem(
                          child: Text('SuperUser'), value: 'SuperUser'),
                      DropdownMenuItem(
                          child: Text('Developer'), value: 'Developer'),
                      DropdownMenuItem(
                          child: Text('Jr Developer'), value: 'Jr Developer')
                    ],
                    onChanged: (value) {
                      print(value);
                      formValues['role'] = value ?? 'Admin';
                    },
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    child: const SizedBox(
                        width: double.infinity,
                        child: Center(child: Text('Guardar'))),
                    onPressed: () {
                      FocusScope.of(context)
                          .requestFocus(FocusNode()); //quitar el teclado
                      //imprimimos los valores de los formularios
                      if (!myFormKey.currentState!.validate()) {
                        print('Formulario no valido');
                        return;
                      }
                      print(formValues);
                    },
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
