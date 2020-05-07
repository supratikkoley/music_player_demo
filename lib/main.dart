import 'package:flutter/material.dart';
import 'package:music_player_demo/myapp.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
      theme: ThemeData(
        primaryColor: Colors.cyan,
        // primarySwatch: Colors.white,
        // accentColor: Colors.white
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          textTheme: TextTheme(
            title: TextStyle(color: Colors.white,fontSize: 18.0),

          ),
        ),
      ),
    ),
  );
}
