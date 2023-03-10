import 'package:amazon_clone/constants/global_variables.dart';
import 'package:amazon_clone/models/user.dart';
import 'package:http/http.dart' as http;


class AuthService {

  void signUp ({
    required String name,
    required String email,
    required String password,
  }) async {
    try{
      User user = User(id: '', name: name, email: email, password: password, address: '', type: '', token: '',);
      http.Response res =  await http.post(Uri.parse('$uri/api/signup'), body: user.toJson(),
      headers: <String, String>{
        "Content-Type": "application/json; charset=UTF-8",
      }
      );

    }catch(e){

    }

  }
}