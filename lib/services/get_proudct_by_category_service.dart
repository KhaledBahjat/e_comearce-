import 'dart:convert';

import 'package:e_comerce/models/proudect_model.dart';
import 'package:http/http.dart' as http;

class GetProudctByCategoryService {
  Future<List<ProudactModel>> getProudctByCategory({
    required String category_name,
  }) async {
    http.Response respose = await http.get(
      Uri.parse('https://fakestoreapi.com/products/category/$category_name'),
    );
    if (respose.statusCode == 200) {
      List<dynamic> data = jsonDecode(respose.body);
      List<ProudactModel> proudctList = [];
      for (int index = 0; index < data.length; index++) {
        proudctList.add(ProudactModel.fromJson(data[index]));
      }
      return proudctList;
    } else {
      throw Exception(
        'There is problem with status code ${respose.statusCode}',
      );
    }
  }
}
