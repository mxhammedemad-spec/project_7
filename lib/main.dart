import 'package:flutter/material.dart';
import 'package:project_6/bloc/anime_bloc.dart';
import 'package:project_6/screens/home.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 702),
      builder: (context, child) =>
          BlocProvider(
            create: (context) => AnimeBloc(),
            child: MaterialApp(debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: ThemeData(

                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              ),
              home: Home(),
            ),
          ),
    );
  }
}

