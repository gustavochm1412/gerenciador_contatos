import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gerenciador de Contatos')),
      body: Column(
        children: [
          Text('Total de Contatos: 0'),
          ElevatedButton(
            onPressed: () {
              // Navegar para a lista de contatos
            },
            child: Text('Ver Contatos'),
          ),
        ],
      ),
    );
  }
}
