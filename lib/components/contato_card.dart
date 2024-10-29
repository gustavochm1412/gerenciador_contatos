import 'package:flutter/material.dart';
import '../models/contato.dart';

class ContatoCard extends StatelessWidget {
  final Contato contato;

  ContatoCard({required this.contato});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(contato.nome),
        subtitle: Text(contato.telefone),
        leading: Icon(Icons.person),
      ),
    );
  }
}
