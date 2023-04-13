part of 'initial_data_bloc.dart';

abstract class InitialDataEvent extends Equatable {}

class LoadInitialData extends InitialDataEvent {
  @override
  List<Object?> get props => [];
}
