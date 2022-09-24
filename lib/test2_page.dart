import 'package:flutter/material.dart';

class Test2Page extends StatefulWidget {
  const Test2Page({Key? key}) : super(key: key);

  @override
  State<Test2Page> createState() => _Test2PageState();
}

class _Test2PageState extends State<Test2Page> {
  bool isTitleBold = true;
  bool isDescriptionJustify = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Styles"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              "Justice League",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: isTitleBold ? FontWeight.bold : FontWeight.normal,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
              textAlign:
                  isDescriptionJustify ? TextAlign.justify : TextAlign.start,
            ),
            const Divider(),
            // Checkbox(
            //   value: isTitleBold,
            //   onChanged: (bool? value) {
            //     isTitleBold = value!;
            //     setState(() {});
            //   },
            // ),
            CheckboxListTile(
              title: Text("Title bold"),
              value: isTitleBold,
              onChanged: (bool? value) {
                isTitleBold = value!;
                setState(() {});
              },
            ),

            CheckboxListTile(
              title: Text("Description justify"),
              value: isDescriptionJustify,
              onChanged: (bool? value) {
                isDescriptionJustify = value!;
                setState(() {

                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
