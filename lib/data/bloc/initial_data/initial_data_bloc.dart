import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:plov_kebab/data/models/banners_model.dart';
import 'package:plov_kebab/data/models/initial_data_model.dart';
import 'package:plov_kebab/data/repository/banner_repo.dart';
import 'package:plov_kebab/data/repository/category_repo.dart';

part 'initial_data_event.dart';
part 'initial_data_state.dart';

class DataBloc extends Bloc<DataEvent, DataState> {
  final _categoryRepo = CategoryRepo();
  final _bannerRepo = BannerRepo();

  DataBloc() : super(DataLoading()) {
    on<LoadInitialData>(_getInitialData);
  }

  _getInitialData(event, emit) async {
    try {
      InitialData categories = await _categoryRepo.loadCategory();
      BannersModel banner = await _bannerRepo.loadBanner();
      emit(DataLoaded(data: categories, banner: banner));
    } catch (error) {
      emit(DataLoadError());
    }
  }
}
