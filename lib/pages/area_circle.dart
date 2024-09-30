import 'package:flutter/material.dart';
import 'dart:math';
//Encargada: Daniela Marin Meneses

class AreaCircle extends StatefulWidget {
  const AreaCircle({super.key});

  @override
  State<AreaCircle> createState() => _AreaCircleState();
}

class _AreaCircleState extends State<AreaCircle> {

  final _numero1 = TextEditingController();
  double _total = 0.0;

  void _areacirculo() {
    setState(() {
      double radio = double.tryParse(_numero1.text) ?? 0.0; // Usa tryParse para evitar errores
      _total = pi * pow(radio, 2); // Área del círculo
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.favorite, // Ícono de corazón vacío
          color: Colors.white,    // Color blanco
        ),
        title: const Center(
          child: Text(
            'Area del circulo',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('assets/images/Area_del_circulo.png'),
                width: 250,
                height: 250,
              ),
              const SizedBox(
                height: 56.0,
              ),
              SizedBox(
                  width: 200, // Ajusta el ancho según lo necesites
                  height: 40, // Ajusta la altura según lo necesites
                  child: TextFormField(
                    controller: _numero1,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Digite la  magnitud del radio en cm: ",
                      contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                    ),
                    keyboardType: TextInputType.number,
                  ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              ElevatedButton.icon(
                style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20)
                ),
                icon: const Icon(Icons.add, size:20),
                onPressed: (){
                  _areacirculo();
                },
                label: const Text("Calcular"),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Text(
                  "El área es ${_total.toStringAsFixed(2)} cm^2",
                  style: const TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//Dani Marin