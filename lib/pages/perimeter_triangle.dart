import 'package:flutter_math_fork/flutter_math.dart';
import 'package:flutter/material.dart';
//Encargado: Jose Daniel Rivera Vergara

class PerimeterTriangle extends StatefulWidget {
  const PerimeterTriangle({super.key});

  @override
  State<PerimeterTriangle> createState() => _PerimeterTriangleState();
}

class _PerimeterTriangleState extends State<PerimeterTriangle> {
  final TextEditingController sideAController = TextEditingController();
  final TextEditingController sideBController = TextEditingController();
  final TextEditingController sideCController = TextEditingController();
  double? perimeter;

  void calculatePerimeter() {
    final double? sideA = double.tryParse(sideAController.text);
    final double? sideB = double.tryParse(sideBController.text);
    final double? sideC = double.tryParse(sideCController.text);

    if (sideA != null &&
        sideB != null &&
        sideC != null &&
        sideA > 0 &&
        sideB > 0 &&
        sideC > 0) {
      setState(() {
        perimeter = sideA + sideB + sideC;
      });
    } else {
      setState(() {
        perimeter = null;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content:
                Text('Por favor, ingresa valores válidos para los tres lados')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Perímetro del Triángulo')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Math.tex(
              r'p = a + b + c', // Fórmula en LaTeX
              textStyle: TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextField(
                    controller: sideAController,
                    decoration: const InputDecoration(
                      labelText: 'Lado A',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    controller: sideBController,
                    decoration: const InputDecoration(
                      labelText: 'Lado B',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    controller: sideCController,
                    decoration: const InputDecoration(
                      labelText: 'Lado C',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: calculatePerimeter,
              child: const Text('Calcular Perímetro'),
            ),
            const SizedBox(height: 16),
            if (perimeter != null)
              Text(
                'El perímetro del triángulo es: $perimeter',
                style: const TextStyle(fontSize: 18),
              ),
          ],
        ),
      ),
    );
  }
}
