import 'package:flutter/material.dart';
//Encargado: John Edisson Chamorro Coral

class AreaTriangle extends StatefulWidget {
  const AreaTriangle({super.key});

  @override
  State<AreaTriangle> createState() => _AreaTriangleState();
}

class _AreaTriangleState extends State<AreaTriangle> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child:
          Column(
            children: [
              Text("Area Triangulo"),
              Text("Encargado: John Edisson Chamorro Coral"),
              Text("No realizó la funcionalidad"),
            ],
          )
      ),
    );
  }
}
