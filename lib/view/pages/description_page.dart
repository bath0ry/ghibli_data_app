import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project_api/components/view/description_page_widgets.dart';
import 'package:project_api/src/data/ghibli_model.dart';
import 'package:project_api/src/data/ghibli_service.dart';

class DescriptionPage extends StatelessWidget {
  final String titleMovie;
  final String movieImage;
  final String descriptionMovie;
  final String directorMovie;
  final String producerMovie;
  final String releaseDateMovie;
  const DescriptionPage(
      {super.key,
      required this.titleMovie,
      required this.movieImage,
      required this.descriptionMovie,
      required this.directorMovie,
      required this.producerMovie,
      required this.releaseDateMovie});

  @override
  Widget build(BuildContext context) {
    return DescriptionPageWidgets(
        titleMovie: titleMovie,
        movieImage: movieImage,
        descriptionMovie: descriptionMovie,
        directorMovie: directorMovie,
        producerMovie: producerMovie,
        releaseDateMovie: releaseDateMovie);
  }
}
