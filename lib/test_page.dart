
import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Images"),
      ),
      body: Column(
        children: [
          //Image.network("https://images.pexels.com/photos/13054203/pexels-photo-13054203.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",),
          Image.asset("assets/images/image1.jpeg"),
        ],
      ),
    );
  }
}
