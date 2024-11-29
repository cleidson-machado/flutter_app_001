import 'package:my_view_app_001/geo_places/c_freguesia.dart';

class Concelho {
  int? idConcelho;
  String? dscConcelho;
  List<Freguesia>? fregresias;

  Concelho({this.idConcelho, this.dscConcelho, this.fregresias});

  factory Concelho.fromJson(Map<String, dynamic> json) {
    return Concelho(
      idConcelho: json['idConcelho'],
      dscConcelho: json['dscConcelho'],
      fregresias: json['fregresias'] != null
        ? (json['fregresias'] as List)
        .map((freguesia) => Freguesia.fromJson(freguesia))
        .toList()
        : null
    );
  }
}