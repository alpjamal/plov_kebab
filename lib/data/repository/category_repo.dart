import 'package:plov_kebab/data/models/initial_data_model.dart';
import 'package:plov_kebab/data/services/http_services.dart';
import 'package:plov_kebab/utils/constants.dart';

class CategoryRepo {
  Future<InitialData> loadCategory() async {
    final response = await ApiRequest().doGetRequest(
      path: ProjectApi.categoryWithProducts,
      query: {
        'page': 1,
        'limit': 100,
      },
    );
    return InitialData.fromJson(response.data);
  }
}
