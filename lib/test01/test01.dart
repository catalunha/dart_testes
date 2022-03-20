import 'package:dart_testes/test01/user_model.dart';

void calculate() {
  Map<String, dynamic> data = {};
  data['cellPhone'] = 'cellPhone';
  data['address'] = 'address';
  data['cep'] = 'cep';
  data['uid'] = 'userAuth.uid';
  data['email'] = 'userAuth.email';
  data['displayName'] = 'Sem nome.';
  data['photoURL'] = 'aa';
  // data['level'] = ['buys'];
  data['createdAt'] = DateTime.now();
  data['isActive'] = false;
  var idNew = '123';
  print('create.map1 $data');
  var userModel = UserModel.fromMap(data).copyWith(id: idNew);
  print('create.map2 ${userModel.toMap()}');
}
