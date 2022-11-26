import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_api/components/view/movie_list_widget.dart';
import 'package:project_api/src/data/ghibli_model.dart';

import 'package:project_api/src/data/movies_cubit.dart';
import 'package:project_api/src/data/movies_state.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
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
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: CustomSearchDelegate());
              },
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
          BlocBuilder<MoviesCubit, MoviesState>(builder: ((context, state) {
            if (state is LoadingState) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is ErrorState) {
              return const Center(child: Text('Erro ao pegar dados'));
            } else if (state is LoadedState) {
              return MovieListWidget(data: state.data);
            } else {
              return const Center(
                child: Text('Error'),
              );
            }
          })),
        ],
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<GhibliModel> data = [];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var movie in data) {
      if (movie.title.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(movie.title);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: ((context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      }),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var movie in data) {
      if (movie.title.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(movie.title);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: ((context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      }),
    );
  }
}
