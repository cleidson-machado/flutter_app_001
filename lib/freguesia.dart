class Freguesia {
  final int idFreguesia;
  final String dscFreguesia;

  Freguesia({
    required this.idFreguesia,
    required this.dscFreguesia,
  });

  factory Freguesia.fromJson(Map<String, dynamic> json) {
    return Freguesia(
      idFreguesia: json['idFreguesia'],
      dscFreguesia: json['dscFreguesia'],
    );
  }
}
