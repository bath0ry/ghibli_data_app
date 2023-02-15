// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:project_api/home/page/view/home_page.dart';

import 'package:project_api/main.dart';
import 'package:project_api/src/data/ghibli_service.dart';
import 'package:project_api/src/data/movies_cubit.dart';

void main() {
  testWidgets('Home Page has image on header', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(
      home: MultiBlocProvider(providers: [
        BlocProvider<MoviesCubit>(
            create: (BuildContext context) =>
                MoviesCubit(service: GhibliService(Dio())))
      ], child: SafeArea(child: HomePage())),
    ));

    // Verify that our counter starts at 0.
    expect(find.byType(Image), findsOneWidget);
  });
}
