import 'package:flutter/material.dart';

class DescriptionPageWidgets extends StatelessWidget {
  const DescriptionPageWidgets({
    Key? key,
    required this.titleMovie,
    required this.movieImage,
    required this.descriptionMovie,
    required this.directorMovie,
    required this.producerMovie,
    required this.releaseDateMovie,
  }) : super(key: key);

  final String titleMovie;
  final String movieImage;
  final String descriptionMovie;
  final String directorMovie;
  final String producerMovie;
  final String releaseDateMovie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 179, 179, 179),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100, bottom: 20),
                child: Center(
                  child: Text(
                    'Title: ${titleMovie}',
                    style: const TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 28,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              Divider(
                height: 50,
                color: Color.fromARGB(255, 0, 0, 0),
                thickness: 2,
                indent: 40,
                endIndent: 40,
              ),
              Image.network(
                movieImage,
                scale: 1,
                height: 220,
              ),
              SizedBox(
                height: 30,
              ),
              Divider(
                height: 50,
                color: Color.fromARGB(255, 0, 0, 0),
                thickness: 2,
                indent: 40,
                endIndent: 40,
              ),
              Text(
                'Description:',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text(
                    descriptionMovie,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 19,
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Divider(
                height: 50,
                color: Color.fromARGB(255, 0, 0, 0),
                thickness: 2,
                indent: 40,
                endIndent: 40,
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Row(
                  children: [
                    Icon(Icons.movie),
                    Text(
                      'Director: ${directorMovie}',
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Row(
                  children: [
                    Icon(Icons.movie_filter),
                    Text(
                      'Producer: ${producerMovie}',
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Row(
                  children: [
                    Icon(Icons.theaters),
                    Text(
                      'Release: ${releaseDateMovie}',
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ));
  }
}
