import 'package:fl_components/widgets/custom_input_field.dart';
import 'package:flutter/material.dart';

class SitioScreen extends StatelessWidget {
  const SitioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'proyecto_nombre': 'Seleccione',
      'sitio_nombre': 'Lima',
      'actividad': 'reparar',
      'torreta': 'claro',
      'fecha_inicio': '01/01/2022',
      'latitud': '123',
      'longitud': '123',
      'direccion': 'av el sol',
      'departamento': 'Lima',
      'grupo': 'Capristan',
      'nombre_corto': 'Lima'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Crear Sitio'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  DropdownButtonFormField<String>(
                    value: 'Seleccionar',
                    items: const [
                      DropdownMenuItem(
                          child: Text('Seleccionar'), value: 'Seleccionar'),
                      DropdownMenuItem(child: Text('HyC2022'), value: 'HyC2022')
                    ],
                    onChanged: (value) {
                      print(value);
                      formValues['proyecto_nombre'] = value ?? 'Seleccionar';
                    },
                  ),

                  //NOMBRE DEL SITIO
                  //ACTIVIDAD
                  //TORRETA
                  const SizedBox(height: 30),
                  DropdownButtonFormField<String>(
                    value: 'Seleccionar',
                    items: const [
                      DropdownMenuItem(
                          child: Text('Seleccionar'), value: 'Seleccionar'),
                      DropdownMenuItem(child: Text('CLARO'), value: 'CLARO')
                    ],
                    onChanged: (value) {
                      print(value);
                      formValues['torreta'] = value ?? 'CLARO';
                    },
                  ),
                  //FECHA INICIO
                  const SizedBox(height: 30),
                  CustomInputField(
                    labelText: 'Fecha inicio',
                    helperText: 'Ingresar la fecha de inicio',
                    hintText: 'Ingresar fecha inicio',
                    formProperty: 'fecha_inicio',
                    formValues: formValues,
                  ),
                  //LATITUD
                  const SizedBox(height: 30),
                  CustomInputField(
                    labelText: 'Latitud',
                    helperText: 'Ingresar Latitud',
                    hintText: 'Ingresar Latitud',
                    formProperty: 'latitud',
                    formValues: formValues,
                  ),
                  //LONGITUD
                  const SizedBox(height: 30),
                  CustomInputField(
                    labelText: 'Longitud',
                    helperText: 'Ingresar Longitud',
                    hintText: 'Ingresar Longitud',
                    formProperty: 'longitud',
                    formValues: formValues,
                  ),
                  //DIRECCION
                  const SizedBox(height: 30),
                  CustomInputField(
                    labelText: 'Direccion',
                    helperText: 'Ingresar direccion',
                    hintText: 'Ingresar direccion',
                    formProperty: 'direccion',
                    formValues: formValues,
                  ),
                  //DEPARTAMENTO
                  const SizedBox(height: 30),
                  CustomInputField(
                    labelText: 'Departamento',
                    helperText: 'Ingresar departamento',
                    hintText: 'Ingresar departamento',
                    formProperty: 'departamento',
                    formValues: formValues,
                  ),
                  //GRUPO
                  const SizedBox(height: 30),
                  DropdownButtonFormField<String>(
                    value: 'Seleccionar',
                    items: const [
                      DropdownMenuItem(
                          child: Text('Seleccionar'), value: 'Seleccionar'),
                      DropdownMenuItem(
                          child: Text('CAPRISTAN'), value: 'CAPRISTAN'),
                      DropdownMenuItem(child: Text('PEDRO'), value: 'PEDRO')
                    ],
                    onChanged: (value) {
                      print(value);
                      formValues['grupo'] = value ?? 'CAPRISTAN';
                    },
                  ),

                  //NOMBRE CORTO
                  const SizedBox(height: 30),
                  CustomInputField(
                    labelText: 'Nombre corto',
                    helperText: 'Ingresar nombre corto',
                    hintText: 'Ingresar nombre corto',
                    formProperty: 'nombre_corto',
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
