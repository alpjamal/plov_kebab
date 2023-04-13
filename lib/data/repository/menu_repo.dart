import 'package:plov_kebab/data/models/menu.dart';
import 'package:plov_kebab/data/services/http_services.dart';

class MenuRepository {
  Future<Menu> loadMenu() async {
    final response = await ApiRequest().doGetRequest(
      path: '/v2/category-with-products',
      headers: {
        'shipper': 'd4b1658f-3271-4973-8591-98a82939a664',
      },
      query: {
        'page': 1,
        'limit': 100,
      },
    );
    return Menu.fromJson(response.data);
  }
}
