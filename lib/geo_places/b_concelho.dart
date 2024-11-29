//CONCELHO COM C É MESMO QUE MUNICÍPIO... Municipalidade...

class Concelho {
  int? idConcelho;
  String? dscConcelho;

  Concelho({this.idConcelho, this.dscConcelho});

  factory Concelho.fromJson(Map<String, dynamic> json) {
    return Concelho(
      idConcelho: json['idConcelho'],
      dscConcelho: json['dscConcelho'],
    );
  }
}