import 'package:flutter/material.dart';
// Encargado: Camilo Alvarez Muñoz

class AreaPentagon extends StatefulWidget {
  const AreaPentagon({super.key});

  @override
  State<AreaPentagon> createState() => _AreaPentagonState();
}

class _AreaPentagonState extends State<AreaPentagon> {

  final TextEditingController _sideController = TextEditingController();
  final TextEditingController _apothemController = TextEditingController();
  String _result = "";

  void _calculateArea() {
    final double? side = double.tryParse(_sideController.text);
    final double? apothem = double.tryParse(_apothemController.text);

    if (side != null && apothem != null) {
      // Fórmula del área de un pentágono: (5 * lado * apotema) / 2
      final double area = (5 * side * apothem) / 2;
      setState(() {
        _result = "Área del pentágono: ${area.toStringAsFixed(2)} cm²";
      });
    } else {
      setState(() {
        _result = "Por favor, ingresa valores válidos.";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;// Obtener el ancho y la altura de la pantalla
    final double imageWidth = size.width * 0.8;  // Ajustar la imagen al ancho de la pantalla
    final double imageHeight = size.height * 0.3;  // Ajusta la imagen a la altura de la pantalla

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Cálculo del área de un pentágono",
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

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Imagen de pentágono
            SizedBox(
              height: imageHeight,
              child: Center(
                child: Image(
                  image: AssetImage('assets/images/area-de-un-pentagono.png'),
                  width: imageWidth,
                  height: imageHeight,
                ),
              ),
            ),

            const SizedBox( height: 25,),

            //Textfield decorado para ingresar el lado del pentagono
            TextField(
              controller: _sideController,
              decoration: const InputDecoration(
                labelText: "Longitud del lado (L) en cm",
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

            //Textfiel decorado para ingresar la apotema
            TextField(
              controller: _apothemController,
              decoration: const InputDecoration(
                labelText: "Longitud de la apotema (ap) en cm",
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
              onPressed: _calculateArea,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
              ),
              child: const Text(
                "Cálcular Área",
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
    );
  }
}
