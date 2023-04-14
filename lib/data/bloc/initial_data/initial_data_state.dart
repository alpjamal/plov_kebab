part of 'initial_data_bloc.dart';

abstract class DataState extends Equatable {}

class DataLoading extends DataState {
  @override
  List<Object?> get props => [];
}

class DataLoaded extends DataState {
  final InitialData data;
  final BannersModel banner;
  DataLoaded({required this.data, required this.banner});

  @override
  List<Object?> get props => [data, banner];
}

class DataLoadError extends DataState {
  @override
  List<Object?> get props => [];
}
