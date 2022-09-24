import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int index = 0;

  List<String> images = [
    "https://images.pexels.com/photos/13054203/pexels-photo-13054203.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/13684853/pexels-photo-13684853.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/13252401/pexels-photo-13252401.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/13522034/pexels-photo-13522034.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/13496827/pexels-photo-13496827.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
  ];


  List data = [
    {
      "id": 1,
      "name": "Imagen 1",
      "image": "https://images.pexels.com/photos/13054203/pexels-photo-13054203.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    },
    {
      "id": 2,
      "name": "Imagen 2",
      "image": "https://images.pexels.com/photos/13684853/pexels-photo-13684853.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    },
    {
      "id": 3,
      "name": "Imagen 3",
      "image": "https://images.pexels.com/photos/13252401/pexels-photo-13252401.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    },
    {
      "id": 4,
      "name": "Imagen 4",
      "image": "https://images.pexels.com/photos/13522034/pexels-photo-13522034.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    },
    {
      "id": 5,
      "name": "Imagen 5",
      "image": "https://images.pexels.com/photos/13496827/pexels-photo-13496827.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    },
  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Images"),
      ),
      body: Column(
        children: [
          Image.network(
            images[index],
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  index--;
                  setState(() {

                  });
                },
                child: Text(
                  "Anterior",
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  index++;
                  setState(() {

                  });
                },
                child: Text(
                  "Siguiente",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
