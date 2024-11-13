import 'dart:convert';

class DaycareClientModel {
    final int? dayCareClientId;
    final String name;
    final int nifNumber;
    final DateTime dateOfBirth;
    final bool isActive;

  DaycareClientModel({
    this.dayCareClientId,
    required this.name,
    required this.nifNumber,
    required this.dateOfBirth,
    required this.isActive,
  });

  DaycareClientModel copyWith({
    int? dayCareClientId,
    String? name,
    int? nifNumber,
    DateTime? dateOfBirth,
    bool? isActive,
  }) {

    return DaycareClientModel(
      dayCareClientId: dayCareClientId ?? this.dayCareClientId,
      name: name ?? this.name,
      nifNumber: nifNumber ?? this.nifNumber,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      isActive: isActive ?? this.isActive,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayCareClientId': dayCareClientId,
      'name': name,
      'nifNumber': nifNumber,
      'dateOfBirth': dateOfBirth.millisecondsSinceEpoch,
      'isActive': isActive,
    };
  }

  factory DaycareClientModel.fromMap(Map<String, dynamic> map) {
    return DaycareClientModel(
      dayCareClientId: map['dayCareClientId'] != null ? map['dayCareClientId'] as int : null,
      name: map['name'] as String,
      nifNumber: map['nifNumber'] as int,
      dateOfBirth: DateTime.fromMillisecondsSinceEpoch(map['dateOfBirth'] as int),
      isActive: map['isActive'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory DaycareClientModel.fromJson(String source) => DaycareClientModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'DaycareClientModel(dayCareClientId: $dayCareClientId, name: $name, nifNumber: $nifNumber, dateOfBirth: $dateOfBirth, isActive: $isActive)';
  }

  @override
  bool operator ==(covariant DaycareClientModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.dayCareClientId == dayCareClientId &&
      other.name == name &&
      other.nifNumber == nifNumber &&
      other.dateOfBirth == dateOfBirth &&
      other.isActive == isActive;
  }

  @override
  int get hashCode {
    return dayCareClientId.hashCode ^
      name.hashCode ^
      nifNumber.hashCode ^
      dateOfBirth.hashCode ^
      isActive.hashCode;
  }
}
