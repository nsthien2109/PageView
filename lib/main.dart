import 'package:flutter/material.dart';
import 'package:page_view/screen/page_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Page View',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PageMain(),
    );
  }
}
