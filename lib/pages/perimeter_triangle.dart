import 'package:flutter/material.dart';
//Encargado: Jose Daniel Rivera Vergara

class PerimeterTriangle extends StatefulWidget {
  const PerimeterTriangle({super.key});

  @override
  State<PerimeterTriangle> createState() => _PerimeterTriangleState();
}

class _PerimeterTriangleState extends State<PerimeterTriangle> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Perimetro Triangulo"),
      ),
    );
  }
}
