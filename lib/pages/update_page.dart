import 'package:crud_firebase/services/firebase_service.dart';
import 'package:flutter/material.dart';

class UpdateEmpleado extends StatefulWidget {
  const UpdateEmpleado({super.key});

  @override
  State<UpdateEmpleado> createState() => _UpdateEmpleadoState();
}

class _UpdateEmpleadoState extends State<UpdateEmpleado> {
  //controlador del nombre
  TextEditingController nameController = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context)!.settings.arguments as Map;
    nameController.text = arguments['name'];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Editar Empleado'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                hintText: 'Escribe la modificacion',
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  await updateEmpleado(arguments["uid"], nameController.text)
                      .then((value) => Navigator.pop(context));
                },
                child: const Text('Actualizar'))
          ],
        ),
      ),
    );
  }
}
