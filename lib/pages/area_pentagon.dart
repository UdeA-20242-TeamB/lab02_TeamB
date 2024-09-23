import 'package:flutter/material.dart';
//Encargado: Camilo Alvarez Muñoz

class AreaPentagon extends StatefulWidget {
  const AreaPentagon({super.key});

  @override
  State<AreaPentagon> createState() => _AreaPentagonState();
}

class _AreaPentagonState extends State<AreaPentagon> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Area Pentagono"),
      ),
    );
  }
}
