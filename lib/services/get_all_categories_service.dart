import 'dart:convert';

import 'package:http/http.dart' as http;

class GetAllCategoriesService {
  Future<List<dynamic>> getAllCategorey() async {
    http.Response respose = await http.get(
      Uri.parse('https://fakestoreapi.com/products/categories'),
    );
    if (respose.statusCode == 200) {
      List<dynamic> data = jsonDecode(respose.body);
      return data;
    } else {
      throw Exception(
        'There is problem with status code ${respose.statusCode}',
      );
    }
  }
}
