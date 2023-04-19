import 'package:plov_kebab/data/models/banners_model.dart';
import 'package:plov_kebab/data/services/http_services.dart';
import 'package:plov_kebab/utils/constants.dart';

class FavouritesRepo {
  Future loadFavourites() async {
    final response = await ApiRequest().doGetRequest(
      path: ProjectApi.favourites,
      query: {
        'page': 1,
        'limit': 100,
      },
    );
    return BannersModel.fromJson(response.data);
  }
}
