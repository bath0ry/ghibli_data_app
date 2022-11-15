import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:project_api/holiday_model.dart';
import 'package:project_api/holiday_service.dart';
import 'package:project_api/test.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final GhibliService service;
  @override
  void initState() {
    service = GhibliService(Dio());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Image.asset(
            'assets/images/imagem_2022-11-15_011646334-removebg-preview.png',
            color: const Color.fromARGB(255, 206, 206, 206),
          ),
          FittedBox(
            child: Container(
              width: 800,
              height: 330,
              color: Colors.black,
              child: Image.asset(
                'assets/images/imagem_2022-11-15_002834448-removebg-preview.png',
              ),
            ),
          ),
          FutureBuilder(
              initialData: GhibliModel(
                  id: '',
                  title: '',
                  originalTitle: '',
                  image: '',
                  description: '',
                  director: '',
                  producer: '',
                  releaseDate: '',
                  url: '',
                  locations: [],
                  movieBanner: '',
                  originalTitleRomanised: '',
                  people: [],
                  rtScore: '',
                  runningTime: '',
                  species: [],
                  vehicles: []),
              future: service.getGhibli(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return const Center(
                    child: Text("Erro"),
                  );
                } else if (snapshot.connectionState == ConnectionState.done) {
                  final data = snapshot.data as List<GhibliModel>;
                  return Expanded(
                    child: ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 40, bottom: 20),
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
                              padding:
                                  const EdgeInsets.only(top: 3, bottom: 10),
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
                                          builder: (context) =>
                                              const MyWidget()));
                                },
                                child: Image.network(
                                  data[index].image,
                                  scale: 1.5,
                                  height: 350,
                                )),
                          ],
                        );
                      },
                    ),
                  );
                } else {
                  return const Center(
                    child: Text('Error'),
                  );
                }
              }),
        ],
      ),
    );
  }
}
