import 'package:flutter/material.dart';
import 'package:news_app/pages/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      theme: ThemeData(
        // primaryColor: Colors.white,
        primarySwatch: Colors.cyan,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          color: Colors.white
        )
      ),
      home: const HomePage(),
    );
  }
}

