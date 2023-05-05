import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:project_api/src/data/ghibli_model.dart';
import 'package:http/http.dart' as http;

class GhibliService {
  Future<String> getGhibli() async {
    var url = Uri.http('https://studio-ghibli-films-api.herokuapp.com', '/api');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body) as Map<String, dynamic>;
      String value = jsonResponse[''];
      return value;
    } else {
      print('Nao foi possivel se conectar com a api ${response.statusCode}');
    }
    return '?';
  }
}
