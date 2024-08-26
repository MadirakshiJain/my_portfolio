import 'package:flutter/material.dart';
import 'package:my_portfolio/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
       debugShowCheckedModeBanner: false,
      
      theme: ThemeData(
        primaryColor: Colors.red.shade100,
      ),
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.red.shade100),
      //   useMaterial3: true,
      // ),
      home: const Dashboard(),
    );
  }
}

