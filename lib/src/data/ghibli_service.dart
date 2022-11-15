import 'package:dio/dio.dart';
import 'package:project_api/src/data/ghibli_model.dart';

class GhibliService {
  GhibliService(this.dio);
  final Dio dio;

  Future<List<GhibliModel>> getGhibli() async {
    const url = "https://ghibliapi.herokuapp.com/films/";

    try {
      final response = await dio.get(url);
      final data = List<GhibliModel>.from(
        response.data.map(
          (e) => GhibliModel.fromJson(e),
        ),
      ).toList();

      return data;
    } catch (e) {
      throw Exception('Erro ao pegar data');
    }
  }
}
