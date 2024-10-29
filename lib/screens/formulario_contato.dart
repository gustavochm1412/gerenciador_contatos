import 'package:flutter/material.dart';
import '../models/contato.dart';
import '../services/api_service.dart';

class FormularioContato extends StatefulWidget {
  @override
  _FormularioContatoState createState() => _FormularioContatoState();
}

class _FormularioContatoState extends State<FormularioContato> {
  final _formKey = GlobalKey<FormState>();
  String? nome;
  String? telefone;
  int? grupoSelecionado;  // Guardar o ID do grupo selecionado
  ApiService apiService = ApiService();

  final List<Map<String, dynamic>> grupos = [  // Simular os grupos para o dropdown
    {'id': 1, 'nome': 'Família'},
    {'id': 2, 'nome': 'Amigos'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Adicionar Contato')),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Nome'),
                onSaved: (value) => nome = value,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira um nome';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Telefone'),
                onSaved: (value) => telefone = value,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira um telefone';
                  }
                  return null;
                },
              ),
              DropdownButtonFormField<int>(
                decoration: InputDecoration(labelText: 'Selecione o Grupo'),
                value: grupoSelecionado,
                items: grupos.map((grupo) {
                  return DropdownMenuItem<int>(
                    value: grupo['id'],
                    child: Text(grupo['nome']),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    grupoSelecionado = value!;
                  });
                },
                validator: (value) {
                  if (value == null) {
                    return 'Por favor, selecione um grupo';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    Contato novoContato = Contato(
                      id: 0,  // Deixe o backend gerar o ID
                      nome: nome!,
                      telefone: telefone!,
                      grupoId: grupoSelecionado!,
                    );
                    apiService.addContato(novoContato).then((value) {
                      Navigator.pop(context);
                    }).catchError((error) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Erro ao salvar contato')),
                      );
                    });
                  }
                },
                child: Text('Salvar'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
