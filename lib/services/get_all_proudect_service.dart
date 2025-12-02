

import 'package:e_comerce/helper/api.dart';
import 'package:e_comerce/models/proudect_model.dart';


class GetAllProudectService {
  Future<List<ProudactModel>> getAllProudct() async {
    List<dynamic> data = await Api().get(
      url: 'https://fakestoreapi.com/products',
    );
    List<ProudactModel> proudctList = [];
    for (int index = 0; index < data.length; index++) {
      proudctList.add(ProudactModel.fromJson(data[index]));
    }
    return proudctList;
  }
}
