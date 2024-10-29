import 'package:flutter/material.dart';
import '../models/contato.dart';
import '../services/api_service.dart';
import '../components/contato_card.dart';

class ListaContatos extends StatefulWidget {
  @override
  _ListaContatosState createState() => _ListaContatosState();
}

class _ListaContatosState extends State<ListaContatos> {
  ApiService apiService = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lista de Contatos')),
      body: FutureBuilder<List<Contato>>(
        future: apiService.fetchContatos(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Erro ao carregar contatos'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('Nenhum contato encontrado'));
          } else {
            List<Contato> contatos = snapshot.data!;
            return ListView.builder(
              itemCount: contatos.length,
              itemBuilder: (context, index) {
                return ContatoCard(contato: contatos[index]);
              },
            );
          }
        },
      ),
    );
  }
}
