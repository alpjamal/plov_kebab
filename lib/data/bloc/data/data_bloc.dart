import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:plov_kebab/data/models/banners_model.dart';
import 'package:plov_kebab/data/models/initial_data_model.dart';
import 'package:plov_kebab/data/models/product_model.dart';
import 'package:plov_kebab/data/repository/banner_repo.dart';
import 'package:plov_kebab/data/repository/category_repo.dart';
import 'package:plov_kebab/data/repository/favorite_repo.dart';

part 'data_event.dart';
part 'data_state.dart';

class DataBloc extends Bloc<DataEvent, DataState> {
  final _categoryRepo = CategoryRepo();
  final _bannerRepo = BannerRepo();
  final _favouriteRepo = FavouritesRepo();

  DataBloc() : super(DataLoading()) {
    on<LoadInitialData>(_loadInitialData);
    on<LoadFavourites>(_loadFavoriteProducts);
  }

  _loadInitialData(event, emit) async {
    try {
      InitialData categories = await _categoryRepo.loadCategory();
      BannersModel banner = await _bannerRepo.loadBanner();
      emit(InitialDataLoaded(data: categories, banner: banner));
    } catch (error) {
      emit(DataLoadError());
    }
  }

  _loadFavoriteProducts(event, emit) async {
    try {
      List<ProductModel> favourites = await _favouriteRepo.loadFavourites();
      emit(FavouritesLoaded(favourites));
    } catch (error) {
      emit(DataLoadError());
    }
  }
}
