import 'package:flutter/material.dart';
//Encargado: Andres Felipe Rodriguez Ferrer

class PerimeterCircle extends StatefulWidget {
  const PerimeterCircle({super.key});

  @override
  State<PerimeterCircle> createState() => _PerimeterCircleState();
}

class _PerimeterCircleState extends State<PerimeterCircle> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Perimetro Circulo"),
      ),
    );
  }
}
