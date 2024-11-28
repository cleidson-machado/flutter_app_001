import 'package:my_view_app_001/freguesia.dart';

class Concelho {
  final int idConcelho;
  final String dscConcelho;
  final List<Freguesia>? freguesias;

  Concelho({
    required this.idConcelho,
    required this.dscConcelho,
    this.freguesias,
  });

  factory Concelho.fromJson(Map<String, dynamic> json) {
    return Concelho(
      idConcelho: json['idConcelho'],
      dscConcelho: json['dscConcelho'],
      freguesias: json['freguesias'] != null
          ? (json['freguesias'] as List)
              .map((freguesia) => Freguesia.fromJson(freguesia))
              .toList()
          : null,
    );
  }
}