import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/contato.dart';

const String apiUrl = "http://localhost:3000/contatos";

class ApiService {
  // Função para adicionar um contato
  Future<Contato> addContato(Contato contato) async {
    final response = await http.post(
      Uri.parse(apiUrl),
      headers: {"Content-Type": "application/json"},
      body: json.encode(contato.toJson()),  // Usando o método toJson da classe Contato
    );

    if (response.statusCode == 201) {
      return Contato.fromJson(json.decode(response.body));
    } else {
      throw Exception('Erro ao adicionar contato');
    }
  }

  // Função para buscar todos os contatos
  Future<List<Contato>> fetchContatos() async {
    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      List<dynamic> body = json.decode(response.body);
      List<Contato> contatos = body.map((dynamic item) => Contato.fromJson(item)).toList();
      return contatos;
    } else {
      throw Exception('Erro ao carregar contatos');
    }
  }
}
