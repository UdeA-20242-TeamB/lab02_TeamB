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
    final size = MediaQuery.of(context)
        .size; // Obtener el ancho y la altura de la pantalla
    final double imageWidth =
        size.width * 0.8; // Ajustar la imagen al ancho de la pantalla
    final double imageHeight =
        size.height * 0.3; // Ajusta la imagen a la altura de la pantalla

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Perímetro del Triángulo',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5,
              color: Colors.white,
              shadows: [
                Shadow(
                  blurRadius: 5.0,
                  color: Colors.black38,
                  offset: Offset(2, 2),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.teal,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Imagen del triángulo
                SizedBox(
                  height: imageHeight,
                  child: Center(
                    child: Image(
                      image: AssetImage('assets/images/triangle_perimeter.jpg'),
                      width: imageWidth,
                      height: imageHeight,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
          
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
                          labelText: "Lado A",
                          labelStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.teal,
                              width: 2.0,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.teal,
                              width: 1.5,
                            ),
                          ),
                        ),
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        controller: sideBController,
                        decoration: const InputDecoration(
                          labelText: "Lado B",
                          labelStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.teal,
                              width: 2.0,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.teal,
                              width: 1.5,
                            ),
                          ),
                        ),
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        controller: sideCController,
                        decoration: const InputDecoration(
                          labelText: "Lado C",
                          labelStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.teal,
                              width: 2.0,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.teal,
                              width: 1.5,
                            ),
                          ),
                        ),
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                ElevatedButton(
                  onPressed: calculatePerimeter,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                  ),
                  child: const Text(
                    'Calcular Perímetro',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          blurRadius: 5.0,
                          color: Colors.black38,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                  ),
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
        ),
      ),
    );
  }
}
