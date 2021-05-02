import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:proyecto1/lib/models/reqres_model.dart';
import 'package:http/http.dart' as http;


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: MiPagina(),
      );
  }
}

Future <ReqResRespuesta> getUsuarios() async {

  final resp = await http.get('https://reqres.in/api/users');
  return reqResRespuestaFromJson(resp.body);
}


class MiPagina extends StatefulWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material app bar'),
      ),
      body: FutureBuilder(
        future: getUsuarios(),
        // ignore: missing_return
        builder: (BuildContext context , AsyncSnapshot <ReqResRespuesta> snapshot ) {
    if (snapshot.connectionState == ConnectionState.waiting) {}
    } else {
      return _ListaUsuarios(snapshot.data.data);
      }

        },
      ),
    );
  }
}

class _ListaUsuarios extends StatelessWidget{
  final List<Usuario> usuarios;
  _ListaUsuarios (this.usuarios);
  @override
  Widget build (BuildContext context){
    return ListView.buildCotext context , int i){
  final usuario =ususario [i];
  return ListTitle
    }
  }
}