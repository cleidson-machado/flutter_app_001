//MESMO QUE ESTADO!

class Distrito {
  int? idDistrito;
  String? descDistrito;

  Distrito({this.idDistrito, this.descDistrito});

  factory Distrito.fromJson(Map<String, dynamic> json) {
    return Distrito(
      idDistrito: json['idDistrito'],
      descDistrito: json['descDistrito'],
    );
  }
}
