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
                    data[index].title,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 201, 240, 165),
                        fontSize: 28,
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
                                  descriptionMovie: data[index].title,
                                  directorMovie: data[index].director,
                                  movieImage: data[index].poster,
                                  producerMovie: data[index].producers,
                                  releaseDateMovie: data[index].release,
                                  titleMovie: data[index].title,
                                )));
                  },
                  child: Image.network(
                    data[index].poster,
                    scale: 1,
                    height: 400,
                  )),
              const Divider(
                height: 50,
                color: Color.fromARGB(255, 255, 255, 255),
                thickness: 2,
                indent: 40,
                endIndent: 40,
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          );
        },
      ),
    );
  }
}
