import 'package:flutter/material.dart';
import 'package:lab02/pages/drawer_page.dart';


//Team B Develop
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      //locale: const Locale("es", "CO"),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const DrawerPage(),
    );
  }
}
