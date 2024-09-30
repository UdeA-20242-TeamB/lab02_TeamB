import 'package:flutter/material.dart';
//Encargado: Pablo Francisco Muñoz Burbano

class AreaSquare extends StatefulWidget {
  const AreaSquare({super.key});

  @override
  State<AreaSquare> createState() => _AreaSquareState();
}

class _AreaSquareState extends State<AreaSquare> {
  final _ladocuadrado = TextEditingController();
  double _areacuadrado = 0.0;

  void _CalcularAreacuradr() {
    setState(() {
      double input_double = double.tryParse(_ladocuadrado.text) ?? 0.0;
      _areacuadrado = input_double * input_double;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              const Image(
                image: AssetImage('assets/images/area_cuadrado.jpg'),
              ),
              const SizedBox(
                height: 16.0,
              ),
              TextFormField(
                controller: _ladocuadrado,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  labelText: "Ingrese el lado del caudrado",
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: _CalcularAreacuradr,
                child: const Text('Calcular Area del cuadrado'),
              ),
              const SizedBox(height: 16.0),
              Text('El area del cuadrado es: $_areacuadrado')
            ],
          ),
        ),
      ),
    );
  }
}
//Pablo Francisco Muñoz
