import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

class ApiPro with ChangeNotifier {
  bool _loading = false;
  bool get loading => _loading;

  setloading(bool value) {
    _loading = value;
    notifyListeners();
  }

  void login(String email, String password) async {
    setloading(true);
    try {
      Response response = await post(
        Uri.parse('https://reqres.in/api/login'),
        body: {"email": email, "password": password},
      );
      if (response.statusCode == 200) {
        print('Login successful');
        setloading(false);
      } else {
        print('Login failed: ${response.statusCode}');
        setloading(false);
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
