import 'package:my_view_app_001/geo_places/b_concelho.dart';

class Distrito {
  int? idDistrito;
  String? dscDistrito;
  List<Concelho>? conselhos;

  Distrito({this.idDistrito, this.dscDistrito, this.conselhos});

  factory Distrito.fromJson(Map<String, dynamic> json) {
    return Distrito(
      idDistrito: json['idDistrito'],
      dscDistrito: json['dscDistrito'],
      conselhos: json['conselhos'] != null
        ? (json['conselhos'] as List)
        .map((conselhos) => Concelho.fromJson(conselhos))
        .toList()
        : null
    );
  }
}
