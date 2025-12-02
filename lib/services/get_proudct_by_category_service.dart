import 'package:e_comerce/helper/api.dart';
import 'package:e_comerce/models/proudect_model.dart';

class GetProudctByCategoryService {
  Future<List<ProudactModel>> getProudctByCategory({
    required String category_name,
  }) async {
    List<dynamic> data = await Api().get(
      url: 'https://fakestoreapi.com/products/category/$category_name',
    );
    List<ProudactModel> proudctList = [];
    for (int index = 0; index < data.length; index++) {
      proudctList.add(ProudactModel.fromJson(data[index]));
    }
    return proudctList;
  }
}
