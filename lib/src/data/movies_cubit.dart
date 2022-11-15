import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_api/ghibli_model.dart';
import 'package:project_api/ghibli_service.dart';
import 'package:project_api/movies_state.dart';

class MoviesCubit extends Cubit<MoviesState> {
  MoviesCubit({required this.service}) : super(InitialState()) {
    getGhibliMovies();
  }

  final GhibliService service;
  void getGhibliMovies() async {
    try {
      emit(LoadingState());
      List<GhibliModel> data = await service.getGhibli();
      emit(LoadedState(data));
    } catch (e) {
      emit(ErrorState());
    }
  }
}
