part of 'initial_data_bloc.dart';

abstract class InitialDataState extends Equatable {}

class DataLoading extends InitialDataState {
  @override
  List<Object?> get props => [];
}

class DataLoaded extends InitialDataState {
  final InitialData data;
  final BannersModel banner;
  DataLoaded({required this.data, required this.banner});

  @override
  List<Object?> get props => [data, banner];
}

class DataLoadError extends InitialDataState {
  @override
  List<Object?> get props => [];
}
