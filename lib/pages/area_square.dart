import 'package:flutter/material.dart';
//Encargado: Pablo Francisco Muñoz Burbano

class AreaSquare extends StatefulWidget {
  const AreaSquare({super.key});

  @override
  State<AreaSquare> createState() => _AreaSquareState();
}

class _AreaSquareState extends State<AreaSquare> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Area Cuadrado"),
      ),
    );
  }
}
