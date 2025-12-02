

import 'package:e_comerce/helper/api.dart';


class GetAllCategoriesService {
  Future<List<dynamic>> getAllCategorey() async {
    List<dynamic> data = await Api().get(
      url: 'https://fakestoreapi.com/products/categories',
    );
    return data;
  }
}
