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
        backgroundColor: const Color.fromARGB(255, 179, 179, 179),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100, bottom: 20),
                child: Center(
                  child: Text(
                    titleMovie,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 28,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              const Divider(
                height: 50,
                color: Color.fromARGB(255, 0, 0, 0),
                thickness: 2,
                indent: 40,
                endIndent: 40,
              ),
              Image.network(
                movieImage,
                height: 350,
              ),
              const SizedBox(
                height: 30,
              ),
              const Divider(
                height: 50,
                color: Color.fromARGB(255, 0, 0, 0),
                thickness: 2,
                indent: 40,
                endIndent: 40,
              ),
              const Text(
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
              const Divider(
                height: 50,
                color: Color.fromARGB(255, 0, 0, 0),
                thickness: 2,
                indent: 40,
                endIndent: 40,
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Row(
                  children: [
                    const Icon(Icons.movie),
                    Text(
                      'Director: $directorMovie',
                      textAlign: TextAlign.start,
                      style:
                          const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Row(
                  children: [
                    const Icon(Icons.movie_filter),
                    Text(
                      'Producer: $producerMovie',
                      textAlign: TextAlign.start,
                      style:
                          const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Row(
                  children: [
                    const Icon(Icons.theaters),
                    Text(
                      'Release: $releaseDateMovie',
                      textAlign: TextAlign.start,
                      style:
                          const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ));
  }
}
