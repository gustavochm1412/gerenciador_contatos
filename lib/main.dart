import 'package:flutter/material.dart';
import 'screens/dashboard.dart';
import 'screens/lista_contatos.dart';
import 'screens/formulario_contato.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gerenciador de Contatos',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Dashboard'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard()));
              },
            ),
            ListTile(
              title: Text('Adicionar Contato'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => FormularioContato()));
              },
            ),
          ],
        ),
      ),
      body: Dashboard(),
    );
  }
}
