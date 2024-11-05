import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gerenciador_contatos/screens/lista_contatos.dart';
import 'package:gerenciador_contatos/models/contato.dart';
import 'package:gerenciador_contatos/components/contato_card.dart';

void main() {
  testWidgets('Exibir lista de contatos', (WidgetTester tester) async {
    // Mock de contatos para o teste
    final contatosMock = [
      Contato(id: 1, nome: 'João', telefone: '123456789', grupoId: 1),
      Contato(id: 2, nome: 'Maria', telefone: '987654321', grupoId: 2),
    ];

    // Constrói o widget com a lista de contatos
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: ListView(
          children: contatosMock.map((contato) => ContatoCard(contato: contato)).toList(),
        ),
      ),
    ));

    // Verifica se os widgets ContatoCard aparecem corretamente
    expect(find.byType(ContatoCard), findsNWidgets(2));
    expect(find.text('João'), findsOneWidget);
    expect(find.text('Maria'), findsOneWidget);
  });
}
