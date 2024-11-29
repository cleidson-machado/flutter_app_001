class Freguesia {
  int? idFreguesia;
  String? dscFreguesia;

  Freguesia({this.idFreguesia, this.dscFreguesia});

  factory Freguesia.fromJson(Map<String, dynamic> json) {
    return Freguesia(
      idFreguesia: json['idFreguesia'],
      dscFreguesia: json['dscFreguesia'],
    );
  }
}
