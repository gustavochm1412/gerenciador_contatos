class Contato {
  final int id;
  final String nome;
  final String telefone;
  final int grupoId;

  Contato({
    required this.id,
    required this.nome,
    required this.telefone,
    required this.grupoId,
  });


  factory Contato.fromJson(Map<String, dynamic> json) {
    return Contato(
      id: json['id'],
      nome: json['nome'],
      telefone: json['telefone'],
      grupoId: json['grupoId'],
    );
  }


  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nome': nome,
      'telefone': telefone,
      'grupoId': grupoId,
    };
  }
}
