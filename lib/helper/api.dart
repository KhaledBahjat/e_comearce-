import 'dart:convert';

import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> get({required String url}) async {
    http.Response respons = await http.get(Uri.parse(url));
    if (respons.statusCode == 200) {
      return jsonDecode(respons.body);
    } else {
      throw Exception(
        'There is problem with status code ${respons.statusCode}',
      );
    }
  }
}
