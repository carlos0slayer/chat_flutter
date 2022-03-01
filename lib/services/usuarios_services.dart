import 'package:http/http.dart' as http;
import 'package:test_app/global/environment.dart';
import 'package:test_app/models/usuario.dart';
import 'package:test_app/models/usuarios_response.dart';
import 'package:test_app/services/auth_service.dart';

class UsuariosServices{
  
  Future<List<Usuario>> getUsuarios() async {
    try {
      
      final uri = Uri.parse('${ Environment.apiUrl }/usuarios');
      final resp = await http.get(uri,
        headers: {
          'Content-Type': 'application/json',
          'x-token': '${await AuthService.getToken()}'
        }
      );

      final usuariosResponse = usuariosResponseFromJson(resp.body);
      return usuariosResponse.usuarios;

    } catch (e) {
      return [];
    }
  }

}