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
        title: const Text("Figuras Geometricas"),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      drawer: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text("Figuras Geometricas"),
          ),

          ListTile(
            leading: const Icon(Icons.list),
            title: const Text("Area Circulo"),
            onTap:(){
              _onItemTapped(0);
              Navigator.pop(context);
            },
          ),

          ListTile(
            leading: const Icon(Icons.api),
            title: const Text("Perimetro Circulo"),
            onTap:(){
              _onItemTapped(1);
              Navigator.pop(context);
            },
          ),

          ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text("Area Cuadrado"),
            onTap:(){
              _onItemTapped(2);
              Navigator.pop(context);
            },
          ),

          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("Perimetro cuadrado"),
            onTap:(){
              _onItemTapped(3);
              Navigator.pop(context);
            },
          ),

          ListTile(
            leading: const Icon(Icons.list),
            title: const Text("Area Triangulo"),
            onTap:(){
              _onItemTapped(4);
              Navigator.pop(context);
            },
          ),

          ListTile(
            leading: const Icon(Icons.list),
            title: const Text("Perimetro Triangulo"),
            onTap:(){
              _onItemTapped(5);
              Navigator.pop(context);
            },
          ),

          ListTile(
            leading: const Icon(Icons.list),
            title: const Text("Area Pentagono"),
            onTap:(){
              _onItemTapped(6);
              Navigator.pop(context);
            },
          ),

          ListTile(
            leading: const Icon(Icons.list),
            title: const Text("Perimetro Pentagono"),
            onTap:(){
              _onItemTapped(7);
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

}
