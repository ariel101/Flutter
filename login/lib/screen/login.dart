
import 'package:http/http.dart' as http;

class Login {
  Future<void> login(String email, String pass) async {
    final url = 'http://localhost:8000/api/login';

    final response = await http.post(
      Uri.parse(url),
      body: {
        'email': '$email',
        'password': '$pass',
      },
    );
    //print("ob:${response}");

    if (response.statusCode == 200) {
      print("Inicio de sesión exitoso: ${response.body}");
    } else {
      print("Error de inicio de sesión: ${response.body}");
    }
  }
}
