import 'dart:convert';

import 'package:e_comerce/models/proudect_model.dart';
import 'package:http/http.dart' as http;

class GetAllProudectService {
  Future<List<ProudactModel>> getAllProudct() async {
    http.Response respose = await http.get(
      Uri.parse('https://fakestoreapi.com/products'),
    );
    List<dynamic> data = jsonDecode(respose.body);
    List<ProudactModel> proudctList = [];
    for (int index = 0; index < data.length; index++) {
      proudctList.add(ProudactModel.fromJson(data[index]));
    }
    return proudctList;
  }
}
