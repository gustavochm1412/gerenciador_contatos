import 'package:flutter_test/flutter_test.dart';
import 'package:gerenciador_contatos/services/api_service.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:gerenciador_contatos/models/contato.dart';
import 'api_service_test.mocks.dart';
import 'package:gerenciador_contatos/models/contato.dart';


@GenerateMocks([ApiService])
void main() {
  late MockApiService mockApiService;

  setUp(() {
    mockApiService = MockApiService();
  });

  test('Filtrar contatos por grupoId', () async {
    // Simular uma lista de contatos com o mesmo grupoId
    final contatosMock = [
      Contato(id: 1, nome: 'João', telefone: '123456789', grupoId: 1),
      Contato(id: 2, nome: 'Maria', telefone: '987654321', grupoId: 1),
    ];

    // Configurar o mock para retornar a lista de contatos com tipo correto
    when(mockApiService.fetchContatos()).thenAnswer((_) async => contatosMock);

    // Recuperar contatos e aplicar o filtro por grupoId
    final contatos = await mockApiService.fetchContatos();
    final filtrados = contatos.where((contato) => contato.grupoId == 1).toList();

    expect(filtrados.length, 2);
    expect(filtrados.every((contato) => contato.grupoId == 1), isTrue);
  });
}
