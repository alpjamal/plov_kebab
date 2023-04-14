import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'filter_state.dart';

class FilterCubit extends Cubit<FilterState> {
  FilterCubit() : super(FilterLoaded([]));

  selectCategory(String category) {
    var filterState = state as FilterLoaded;
    List<String> list = filterState.selectedCategories;

    if (list.contains(category)) {
      list.remove(category);
    } else {
      list.add(category);
    }
    emit(FilterLoaded(list));
  }
}
