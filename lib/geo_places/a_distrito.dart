import 'package:my_view_app_001/geo_places/b_concelho.dart';

class Distrito {
  int? idDistrito;
  String? descDistrito;
  List<Concelho>? conselhos;

  Distrito({this.idDistrito, this.descDistrito, this.conselhos});

  factory Distrito.fromJson(Map<String, dynamic> json) {
    return Distrito(
      idDistrito: json['idDistrito'],
      descDistrito: json['descDistrito'],
      conselhos: json['conselhos'] != null
        ? (json['conselhos'] as List)
        .map((conselhos) => Concelho.fromJson(conselhos))
        .toList()
        : null
    );
  }
}
