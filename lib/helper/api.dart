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

  Future<dynamic> post({
    required String url,
    dynamic body,
  }) async {
    http.Response response = await http.post(
      Uri.parse(url),
      body: body,
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception(
        'there an  problem with status code ${response.statusCode} with body ${jsonDecode(response.body)}',
      );
    }
  }

  Future<dynamic> put({
    required String url,
    dynamic body,
  }) async {
    http.Response response = await http.put(
      Uri.parse(url),
      body: body,
      headers: {'Content-Type': 'application/x-www-form-urlencoded'},
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception(
        'there an  problem with status code ${response.statusCode} with body ${jsonDecode(response.body)}',
      );
    }
  }
}
