import 'package:flutter/material.dart';
import 'package:quiz_app/home.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.green,
        ),
        primaryColor: Colors.greenAccent,
      ),
      
      home: HomeScreen(),
      );
    
    
  }
}