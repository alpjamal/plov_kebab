part of 'data_bloc.dart';

abstract class DataState extends Equatable {}

class DataLoading extends DataState {
  @override
  List<Object?> get props => [];
}

class InitialDataLoaded extends DataState {
  final InitialData data;
  final BannersModel banner;
  InitialDataLoaded({required this.data, required this.banner});

  @override
  List<Object?> get props => [data, banner];
}

class DataLoadError extends DataState {
  @override
  List<Object?> get props => [];
}

class FavouritesLoaded extends DataState {
  final List <ProductModel> favorites;

  FavouritesLoaded(this.favorites);
  @override
  List<Object?> get props => [favorites];
}

