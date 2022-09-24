import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {

  List<String> images = [
    "https://images.pexels.com/photos/13054203/pexels-photo-13054203.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/13684853/pexels-photo-13684853.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/13252401/pexels-photo-13252401.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1  ",
    "https://images.pexels.com/photos/13522034/pexels-photo-13522034.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/13496827/pexels-photo-13496827.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
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
            "https://images.pexels.com/photos/13054203/pexels-photo-13054203.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Anterior",
                ),
              ),
              ElevatedButton(
                onPressed: () {},
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
