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

  //Paginas a implementar
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
      //Appbar
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 10,
        title: const Text(
          "Figuras Geométricas",
          style: TextStyle(
            fontSize: 24,
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
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline, color: Colors.white),
            tooltip: 'Información',
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Información'),
                    content: const Text(
                        'Esta es una aplicación para calcular áreas y perímetros de distintas figuras geométricas. Realizado por un grupo de 8 integrantes a través del control de versiones de GitHub.'),
                    actions: [
                      TextButton(
                        child: const Text('Cerrar'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.white,
                    width: 3,
                  ),
                ),
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Figuras Geométricas",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 2,
                    shadows: [
                      Shadow(
                        blurRadius: 5.0,
                        color: Colors.black38,
                        offset: Offset(3, 3),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.circle,
                color: Colors.red,
              ),
              title: const Text(
                "Área Círculo",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              onTap: () {
                _onItemTapped(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.circle_outlined,
                color: Colors.green,
              ),
              title: const Text(
                "Perímetro Círculo",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              onTap: () {
                _onItemTapped(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.square,
                color: Colors.blue,
              ),
              title: const Text(
                "Área Cuadrado",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              onTap: () {
                _onItemTapped(2);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.square_outlined,
                color: Colors.orange,
              ),
              title: const Text(
                "Perímetro Cuadrado",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              onTap: () {
                _onItemTapped(3);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.change_history,
                color: Colors.purple,
              ),
              title: const Text(
                "Área Triángulo",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              onTap: () {
                _onItemTapped(4);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.change_history_outlined,
                color: Colors.cyan,
              ),
              title: const Text(
                "Perímetro Triángulo",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              onTap: () {
                _onItemTapped(5);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.star,
                color: Colors.pink,
              ),
              title: const Text(
                "Área Pentágono",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              onTap: () {
                _onItemTapped(6);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.star_border,
                color: Colors.greenAccent,
              ),
              title: const Text(
                "Perímetro Pentágono",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              onTap: () {
                _onItemTapped(7);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
