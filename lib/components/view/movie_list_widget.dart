import 'package:flutter/material.dart';
import 'package:project_api/src/data/ghibli_model.dart';
import 'package:project_api/view/pages/description_page.dart';

class MovieListWidget extends StatelessWidget {
  const MovieListWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  final List<GhibliModel> data;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 5),
                child: Center(
                  child: Text(
                    'Title: ${data[index].title}',
                    style: const TextStyle(
                        color: Color.fromARGB(255, 201, 240, 165),
                        fontSize: 28,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3, bottom: 10),
                child: Center(
                  child: Text(
                    'Original Title: ${data[index].originalTitle}',
                    style: const TextStyle(
                        color: Color.fromARGB(255, 228, 176, 176),
                        fontSize: 25,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DescriptionPage(
                                  descriptionMovie: data[index].description,
                                  directorMovie: data[index].director,
                                  movieImage: data[index].movieBanner,
                                  producerMovie: data[index].producer,
                                  releaseDateMovie: data[index].releaseDate,
                                  titleMovie: data[index].title,
                                )));
                  },
                  child: Image.network(
                    data[index].image,
                    scale: 1,
                    height: 400,
                  )),
              Divider(
                height: 50,
                color: Color.fromARGB(255, 255, 255, 255),
                thickness: 2,
                indent: 40,
                endIndent: 40,
              ),
              SizedBox(
                height: 30,
              ),
            ],
          );
        },
      ),
    );
  }
}
