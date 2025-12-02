import 'dart:convert';

import 'package:http/http.dart' as http;

class GetAllCategoriesService {
  Future<List<dynamic>> getAllCategorey() async {
    http.Response respose = await http.get(
      Uri.parse('https://fakestoreapi.com/products/categories'),
    );
    List<dynamic> data = jsonDecode(respose.body);
    return data;
  }
}
