part of 'data_bloc.dart';

abstract class DataEvent extends Equatable {}

class LoadInitialData extends DataEvent {
  @override
  List<Object?> get props => [];
}

class LoadFavourites extends DataEvent {
  @override
  List<Object?> get props => [];
}
