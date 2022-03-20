import 'package:dart_testes/test02/data_model.dart';

void calculate() {
  var dateTime = DateTime.now();

  print('dateTime: ${dateTime}');
  print('dateTime.toIso8601String(): ${dateTime.toIso8601String()}');
  print('dateTime.toLocal(): ${dateTime.toLocal()}');
  print('dateTime.toString(): ${dateTime.toString()}');
  print('dateTime.toUtc(): ${dateTime.toUtc()}');
  var dataModel = DataModel(
    name: 'a',
    age: 1,
    weight: 1.1,
    birthday: dateTime,
  );
  print('dataModel); ${dataModel}');
  print('dataModel.runtimeType ${dataModel.runtimeType}');
  print('dataModel.toString ${dataModel.toString()}');
  print('maps');
  print('dataModel.toMap ${dataModel.toMap()}');
  print(
      'DataModel.fromMap(dataModel.toMap()) ${DataModel.fromMap(dataModel.toMap())}');
  print('jsons');
  print('dataModel.toJson2 ${dataModel.toJson()}');
  print(
      'DataModel.fromMap(dataModel.toMap()) ${DataModel.fromJson(dataModel.toJson())}');
}
