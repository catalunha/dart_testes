import 'dart:convert';

class DataModel {
  final String name;
  final int age;
  final double weight;
  final DateTime birthday;
  DataModel({
    required this.name,
    required this.age,
    required this.weight,
    required this.birthday,
  });

  DataModel copyWith({
    String? name,
    int? age,
    double? weight,
    DateTime? birthday,
  }) {
    return DataModel(
      name: name ?? this.name,
      age: age ?? this.age,
      weight: weight ?? this.weight,
      birthday: birthday ?? this.birthday,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'age': age,
      'weight': weight,
      'birthday': birthday,
    };
  }

  factory DataModel.fromMap(Map<String, dynamic> map) {
    return DataModel(
      name: map['name'] ?? '',
      age: map['age']?.toInt() ?? 0,
      weight: map['weight']?.toDouble() ?? 0.0,
      birthday: DateTime.fromMillisecondsSinceEpoch(
          map['birthday'].millisecondsSinceEpoch),
      // birthday: map['birthday'],
    );
  }
  // String toJson0() => json.encode(toMap());

  // String toJson1() {
  //   var map = {
  //     'name': name,
  //     'age': age,
  //     'weight': weight,
  //     'birthday': birthday.toIso8601String(),
  //   };

  //   return json.encode(map);
  // }

  String toJson() {
    var map = toMap();
    map['birthday'] = birthday.toIso8601String();
    return json.encode(map);
  }

  // factory DataModel.fromJson0(String source) =>
  //     DataModel.fromMap(json.decode(source));

  // factory DataModel.fromJson1(String source) {
  //   var map = json.decode(source);
  //   return DataModel(
  //     name: map['name'] ?? '',
  //     age: map['age']?.toInt() ?? 0,
  //     weight: map['weight']?.toDouble() ?? 0.0,
  //     birthday: DateTime.tryParse(map['birthday'] as String) ?? DateTime.now(),
  //   );
  // }
  factory DataModel.fromJson(String source) {
    var map = json.decode(source);
    map['birthday'] =
        DateTime.tryParse(map['birthday'] as String) ?? DateTime.now();
    return DataModel.fromMap(map);
  }

  @override
  String toString() {
    return 'DataModel(name: $name, age: $age, weight: $weight, birthday: $birthday)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DataModel &&
        other.name == name &&
        other.age == age &&
        other.weight == weight &&
        other.birthday == birthday;
  }

  @override
  int get hashCode {
    return name.hashCode ^ age.hashCode ^ weight.hashCode ^ birthday.hashCode;
  }
}
