import 'package:flutter/material.dart';
//Encargado: Santiago Caceres Vasquez

class PerimeterSquare extends StatefulWidget {
  const PerimeterSquare({super.key});

  @override
  State<PerimeterSquare> createState() => _PerimeterSquareState();
}

class _PerimeterSquareState extends State<PerimeterSquare> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child:
        Column(
          children: [
            Text("Perimetro cuadrado"),
            Text("Encargado: Santiago Caceres Vasquez"),
            Text("No realizó la funcionalidad"),
          ],
        )
      ),
    );
  }
}
