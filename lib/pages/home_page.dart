//import 'package:crud_firebase/pages/add_empleado.dart';
import 'package:crud_firebase/services/firebase_service.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('CRUD FIREBASE'),
        ),
        body: FutureBuilder(
          future: getEmpleado(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: (BuildContext context, int index) {
                  return Dismissible(
                    onDismissed: (direction) async {
                      await deleteEmpleado(snapshot.data?[index]['uid']);
                      snapshot.data?.removeAt(index);
                    },
                    confirmDismiss: (direction) async {
                      bool result = true;

                      result = await showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text(
                                "¿Estas seguro de eliminar a ${snapshot.data?[index]['name']}?"),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  return Navigator.pop(
                                    context,
                                    false,
                                  );
                                },
                                child: const Text('Cancelar'),
                              ),
                              TextButton(
                                  onPressed: () {
                                    return Navigator.pop(
                                      context,
                                      true,
                                    );
                                  },
                                  child: const Text('Si'))
                            ],
                          );
                        },
                      );

                      return true;
                    },
                    background: Container(
                      color: Colors.red,
                      child: const Icon(Icons.delete),
                    ),
                    direction: DismissDirection.endToStart,
                    //clave unica
                    key: Key(snapshot.data?[index]['uid']),
                    child: ListTile(
                      title: Text(snapshot.data?[index]['name']),
                      onTap: () async {
                        await Navigator.pushNamed(context, "/update",
                            arguments: {
                              "name": snapshot.data?[index]['name'],
                              "uid": snapshot.data?[index]['uid']
                            });
                        setState(() {});
                      },
                    ),
                  );
                },
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
        //boton para añadir nuevo registro
        //enviamos a la pagina
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            await Navigator.pushNamed(context, '/add');
            setState(() {});
          },
          child: const Icon(Icons.add),
        ));
  }
}
