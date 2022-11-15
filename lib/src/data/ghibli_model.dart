// To parse this JSON data, do
//
//     final ghibliModel = ghibliModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<GhibliModel> ghibliModelFromJson(String str) => List<GhibliModel>.from(
    json.decode(str).map((x) => GhibliModel.fromJson(x)));

String ghibliModelToJson(List<GhibliModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GhibliModel {
  GhibliModel({
    required this.id,
    required this.title,
    required this.originalTitle,
    required this.image,
    required this.movieBanner,
    required this.description,
    required this.director,
    required this.producer,
    required this.releaseDate,
    required this.url,
  });

  String id;
  String title;
  String originalTitle;

  String image;
  String movieBanner;
  String description;
  String director;
  String producer;
  String releaseDate;

  String url;

  factory GhibliModel.fromJson(Map<String, dynamic> json) => GhibliModel(
        id: json["id"],
        title: json["title"],
        originalTitle: json["original_title"],
        image: json["image"],
        movieBanner: json["movie_banner"],
        description: json["description"],
        director: json["director"],
        producer: json["producer"],
        releaseDate: json["release_date"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "original_title": originalTitle,
        "image": image,
        "movie_banner": movieBanner,
        "description": description,
        "director": director,
        "producer": producer,
        "release_date": releaseDate,
        "url": url,
      };
}
