//adminitracion de la informacion en firebase

import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

//funcion que trae la informacion
Future<List> getEmpleado() async {
  List empleado = [];

  CollectionReference collectionReferenceEmpleado = db.collection('empleado');

  //busqueda en la base de datos

  QuerySnapshot queryEmpleado = await collectionReferenceEmpleado.get();

  for (var doc in queryEmpleado.docs) {
    final Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    final person = {"name": data["name"], "uid": doc.id};
    empleado.add(person);
  }

  return empleado;
}

//funcion que guarda la informacion en la base de datos
Future<void> addEmpleado(String name) async {
  await db.collection("empleado").add({"name": name});
}

//funcion que actualiza un empleado
Future<void> updateEmpleado(String uid, String newName) async {
  await db.collection("empleado").doc(uid).set({"name": newName});
}

//borrar datos de base de datos
Future<void> deleteEmpleado(String uid) async {
  await db.collection("empleado").doc(uid).delete();
}
