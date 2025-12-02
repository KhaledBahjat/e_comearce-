import 'package:e_comerce/helper/api.dart';
import 'package:e_comerce/models/proudect_model.dart';

class UpdateProudctService {
  Future<ProudactModel> updateProudct({
    required String price,
    required String title,
    required String category,
    required String desc,
    required String image,
  }) async {
    Map<String, dynamic> data = await Api().put(
      url: 'https://fakestoreapi.com/products',
      body: {
        'title': title,
        'price': price,
        'description': desc,
        'image': image,
        'category': category,
      },
    );
    return ProudactModel.fromJson(data);
  }
}
