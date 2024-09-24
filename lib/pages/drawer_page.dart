import 'package:flutter/material.dart';
import 'package:lab02/pages/area_circle.dart';
import 'package:lab02/pages/area_pentagon.dart';
import 'package:lab02/pages/area_square.dart';
import 'package:lab02/pages/area_triangle.dart';
import 'package:lab02/pages/perimeter_circle.dart';
import 'package:lab02/pages/perimeter_pentagon.dart';
import 'package:lab02/pages/perimeter_square.dart';
import 'package:lab02/pages/perimeter_triangle.dart';

//Drawer page

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    AreaCircle(),
    PerimeterCircle(),
    AreaSquare(),
    PerimeterSquare(),
    AreaTriangle(),
    PerimeterTriangle(),
    AreaPentagon(),
    PerimeterPentagon(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Figuras Geométricas"),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      drawer: SizedBox(
        width: MediaQuery.of(context).size.width * 0.75, // Ocupa el 75% del ancho
        child: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text("Figuras Geométricas",
                  style: TextStyle(
                    color: Colors.black, // Texto en negro
                    fontSize: 20, // Tamaño de fuente
                    fontWeight: FontWeight.bold,
                  ),),
              ),
          
              ListTile(
                leading: const Icon(Icons.circle_rounded),
                title: const Text("Área Círculo"),
                onTap:(){
                  _onItemTapped(0);
                  Navigator.pop(context);
                },
              ),
          
              ListTile(
                leading: const Icon(Icons.circle_outlined),
                title: const Text("Perímetro Círculo"),
                onTap:(){
                  _onItemTapped(1);
                  Navigator.pop(context);
                },
              ),
          
              ListTile(
                leading: const Icon(Icons.square),
                title: const Text("Área Cuadrado"),
                onTap:(){
                  _onItemTapped(2);
                  Navigator.pop(context);
                },
              ),
          
              ListTile(
                leading: const Icon(Icons.square_outlined),
                title: const Text("Perímetro cuadrado"),
                onTap:(){
                  _onItemTapped(3);
                  Navigator.pop(context);
                },
              ),
          
              ListTile(
                leading: const Icon(Icons.change_history),
                title: const Text("Área Triángulo"),
                onTap:(){
                  _onItemTapped(4);
                  Navigator.pop(context);
                },
              ),
          
              ListTile(
                leading: const Icon(Icons.change_history),
                title: const Text("Perímetro Triángulo"),
                onTap:(){
                  _onItemTapped(5);
                  Navigator.pop(context);
                },
              ),
          
              ListTile(
                leading: const Icon(Icons.pentagon),
                title: const Text("Área Pentágono"),
                onTap:(){
                  _onItemTapped(6);
                  Navigator.pop(context);
                },
              ),
          
              ListTile(
                leading: const Icon(Icons.pentagon_outlined),
                title: const Text("Perímetro Pentágono"),
                onTap:(){
                  _onItemTapped(7);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

}
