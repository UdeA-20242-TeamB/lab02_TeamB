import 'package:flutter/material.dart';

//Encargado: Sebastian Zuluaga Correa
//Inicio de modificaciones Sebas

class PerimeterPentagon extends StatefulWidget {
  const PerimeterPentagon({super.key});

  @override
  State<PerimeterPentagon> createState() => _PerimeterPentagonState();
}

class _PerimeterPentagonState extends State<PerimeterPentagon> {
  final _side_a = TextEditingController();
  final _side_b = TextEditingController();
  final _side_c = TextEditingController();
  final _side_d = TextEditingController();
  final _side_e = TextEditingController();

  double _perimeter = 0;

  void _calculated_perimeter() {
    setState(() {
      SnackBar snackBar = SnackBar(content: Text("Ingrese un valor valido para todos los números"));
      if (_side_a.text.isValidNumber() &&
          _side_b.text.isValidNumber() &&
          _side_c.text.isValidNumber() &&
          _side_d.text.isValidNumber() &&
          _side_e.text.isValidNumber()) {
        _perimeter = (double.parse(_side_d.text))+(double.parse(_side_e.text))
            +(double.parse(_side_a.text))+(double.parse(_side_b.text))+(double.parse(_side_c.text));
      }
      else{
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        _perimeter = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Cálculo perímetro de un pentágono",
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
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage('assets/images/pentagon-remove.png'),
                  width: 165,
                  height: 147,
                ),
                const SizedBox(
                  height: 16.0,
                ),
                TextFormField(
                  controller: _side_a,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Ingrese la longitud del lado a [cm]",
                    labelStyle: TextStyle(
                      fontSize: 16,
                      //fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.teal,
                        width: 1.5,
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) =>
                      value!.isValidNumber() ? null : "Número invalido",
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _side_b,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Ingrese la longitud del lado b [cm]",
                    labelStyle: TextStyle(
                      fontSize: 16,
                      //fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.teal,
                        width: 1.5,
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) =>
                      value!.isValidNumber() ? null : "Número invalido",
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _side_c,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Ingrese la longitud del lado c [cm]",
                    labelStyle: TextStyle(
                      fontSize: 16,
                      //fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.teal,
                        width: 1.5,
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) =>
                      value!.isValidNumber() ? null : "Número invalido",
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _side_d,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Ingrese la longitud del lado d [cm]",
                    labelStyle: TextStyle(
                      fontSize: 16,
                      //fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.teal,
                        width: 1.5,
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) =>
                      value!.isValidNumber() ? null : "Número invalido",
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _side_e,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Ingrese la longitud del lado e [cm]",
                    labelStyle: TextStyle(
                      fontSize: 16,
                      //fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.teal,
                        width: 1.5,
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) =>
                      value!.isValidNumber() ? null : "Número invalido",
                ),
                SizedBox(
                  height: 16.0,
                ),
                ElevatedButton(
                  onPressed: _calculated_perimeter,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                  ),
                  child: const Text(
                    "Cálcular perímetro",
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
                  "El perímetro del pentágono es $_perimeter [cm]",
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
      ),
    );
  }
}

extension on String {
  bool isValidNumber() {
    return RegExp(r'^\d+(\.\d+)?$').hasMatch(this);
  }
}
