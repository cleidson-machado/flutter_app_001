import 'package:my_view_app_001/concelho.dart';

class Distrito {
  final int idDistrito;
  final String descDistrito;
  final List<Concelho> concelhos;

  Distrito({
    required this.idDistrito,
    required this.descDistrito,
    required this.concelhos,
  });

  factory Distrito.fromJson(Map<String, dynamic> json) {
    return Distrito(
      idDistrito: json['idDistrito'],
      descDistrito: json['descDistrito'],
      concelhos: (json['concelhos'] as List)
          .map((concelho) => Concelho.fromJson(concelho))
          .toList(),
    );
  }
}
