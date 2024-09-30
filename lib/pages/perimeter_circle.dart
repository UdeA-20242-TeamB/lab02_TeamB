import 'package:flutter/material.dart';
// Encargado: Andres Felipe Rodriguez Ferrer

class PerimeterCircle extends StatefulWidget {
  const PerimeterCircle({super.key});

  @override
  State<PerimeterCircle> createState() => _PerimeterCircleState();
}

class _PerimeterCircleState extends State<PerimeterCircle> {
  final TextEditingController _radiusController = TextEditingController();
  String _result = "";

  void _calculatePerimeter() {
    final double? radius = double.tryParse(_radiusController.text);

    if (radius != null) {
      // perímetro de un círculo: 2 * π * r
      final double perimeter = 2 * 3.1416 * radius;
      setState(() {
        _result = "Perímetro del círculo: ${perimeter.toStringAsFixed(2)} cm";
      });
    } else {
      setState(() {
        _result = "Por favor, ingresa un valor válido.";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double imageWidth = size.width * 0.8;
    final double imageHeight = size.height * 0.3;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Perímetro del círculo",
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
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [

              SizedBox(
                height: imageHeight,
                child: Center(
                  child: Image(
                    image: const AssetImage('assets/images/perimetro-circulo.png'),
                    width: imageWidth,
                    height: imageHeight,
                  ),
                ),
              ),

              const SizedBox(height: 25),


              TextField(
                controller: _radiusController,
                decoration: const InputDecoration(
                  labelText: "Radio del círculo (r) en cm",
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

              const SizedBox(height: 16),

              ElevatedButton(
                onPressed: _calculatePerimeter,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                ),
                child: const Text(
                  "Calcular Perímetro",
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

              const SizedBox(height: 20),

              Text(
                _result,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
