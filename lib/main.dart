import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}



class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int contador = 100;

  List<String> names = [
    "Juan",
    "Luis",
    "Carlos",
    "Dario",
    "Fiorella",
    "Manuel",
    "Diego",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hola a todos"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              contador.toString(),
              style: TextStyle(
                fontSize: 40.0
              ),
            ),
            SizedBox(
              height: 6.0,
            ),
            ElevatedButton(
              onPressed: () {
                contador = contador + 1;
                print(contador);
                setState(() {});
              },
              child: Text(
                "Siguiente",
              ),
            ),
          ],
        ),
      ),
    );
  }
}















