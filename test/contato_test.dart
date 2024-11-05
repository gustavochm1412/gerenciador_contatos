import 'package:flutter_test/flutter_test.dart';
import 'package:gerenciador_contatos/models/contato.dart';

void main() {
  test('Contato não deve ter nome vazio', () {
    final contato = Contato(id: 1, nome: '', telefone: '123456789', grupoId: 1);
    expect(contato.nome.isEmpty, true);
  });

  test('Contato deve ter um grupoId válido', () {
    final contato = Contato(id: 1, nome: 'João', telefone: '123456789', grupoId: 1);
    expect(contato.grupoId > 0, true);
  });
}
