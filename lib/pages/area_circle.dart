import 'package:flutter/material.dart';
//Encargada: Daniela Marin Meneses

class AreaCircle extends StatefulWidget {
  const AreaCircle({super.key});

  @override
  State<AreaCircle> createState() => _AreaCircleState();
}

class _AreaCircleState extends State<AreaCircle> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Area Circulo"),
      ),
    );
  }
}
