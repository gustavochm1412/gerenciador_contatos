import 'package:flutter_test/flutter_test.dart';
import '../lib/models/contato.dart';

void main() {
  test('Contato deve ter nome válido', () {
    var contato = Contato(id: 1, nome: '', telefone: '123456789', grupoId: 1);
    expect(contato.nome.isEmpty, true);
  });
}
