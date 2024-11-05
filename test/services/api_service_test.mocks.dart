import 'dart:async' as _i3;

import 'package:gerenciador_contatos/services/api_service.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:gerenciador_contatos/models/contato.dart';

class MockApiService extends _i1.Mock implements _i2.ApiService {
  MockApiService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  Future<Contato> addContato(Contato contato) => (super.noSuchMethod(
        Invocation.method(#addContato, [contato]),
        returnValue:
            Future.value(Contato(id: 0, nome: '', telefone: '', grupoId: 0)),
        returnValueForMissingStub:
            Future.value(Contato(id: 0, nome: '', telefone: '', grupoId: 0)),
      ) as Future<Contato>);

  @override
  Future<List<Contato>> fetchContatos() => (super.noSuchMethod(
        Invocation.method(#fetchContatos, []),
        returnValue: Future.value(<Contato>[]),
        returnValueForMissingStub: Future.value(<Contato>[]),
      ) as Future<List<Contato>>);
}
