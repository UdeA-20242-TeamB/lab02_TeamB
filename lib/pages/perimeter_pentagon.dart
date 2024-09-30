import 'package:flutter/material.dart';
//Encargado: Sebastian Zuluaga Correa

class PerimeterPentagon extends StatefulWidget {
  const PerimeterPentagon({super.key});

  @override
  State<PerimeterPentagon> createState() => _PerimeterPentagonState();
}

class _PerimeterPentagonState extends State<PerimeterPentagon> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Perimetro Pentagono"),
      ),
    );
  }
}
