import 'package:flutter/material.dart';

import 'package:project_api/components/view/description_page_widgets.dart';

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
