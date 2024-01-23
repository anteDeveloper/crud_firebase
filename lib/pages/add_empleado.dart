import 'package:crud_firebase/services/firebase_service.dart';
import 'package:flutter/material.dart';

class AddEmpleado extends StatefulWidget {
  const AddEmpleado({super.key});

  @override
  State<AddEmpleado> createState() => _AddEmpleadoState();
}

class _AddEmpleadoState extends State<AddEmpleado> {
  //controlador del nombre
  TextEditingController nameController = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('agregar empleado'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                hintText: 'Escribe el nombre del empleado',
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                await addEmpleado(nameController.text).then((_) {
                  Navigator.pop(context);
                });
              },
              child: const Text('Guardar'),
            )
          ],
        ),
      ),
    );
  }
}
