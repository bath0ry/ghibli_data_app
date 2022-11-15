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
      backgroundColor: Color.fromARGB(255, 218, 203, 198),
      body: Column(
        children: [
          FittedBox(
            child: Container(
              child: Center(
                  child: Text(
                'Studio Ghibli Data Base',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic),
              )),
              color: Color.fromARGB(255, 0, 0, 0),
              width: 600,
              height: 250,
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
                  return Center(child: const CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return const Center(
                    child: Text("Erro"),
                  );
                } else if (snapshot.connectionState == ConnectionState.done) {
                  final data = snapshot.data as List<GhibliModel>;
                  return Expanded(
                    child: ListView(
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyWidget()));
                            },
                            child: Image.network(data[0].image)),
                        Image.network(data[1].image)
                      ],
                    ),
                  );
                } else {
                  return Container(
                    child: Text('Error'),
                  );
                }
              }),
        ],
      ),
    );
  }
}
