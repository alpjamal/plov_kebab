part of 'filter_cubit.dart';

abstract class FilterState extends Equatable {}

class FilterLoaded extends FilterState {
  final List<String> selectedCategories;
  FilterLoaded(this.selectedCategories);
  @override
  List<Object?> get props => [selectedCategories];
}
