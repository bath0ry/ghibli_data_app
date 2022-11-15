import 'package:equatable/equatable.dart';
import 'package:project_api/src/data/ghibli_model.dart';

abstract class MoviesState extends Equatable {}

class InitialState extends MoviesState {
  @override
  List<Object> get props => [];
}

class LoadingState extends MoviesState {
  @override
  List<Object> get props => [];
}

class LoadedState extends MoviesState {
  LoadedState(this.data);

  final List<GhibliModel> data;

  @override
  List<Object> get props => [data];
}

class ErrorState extends MoviesState {
  @override
  List<Object> get props => [];
}
