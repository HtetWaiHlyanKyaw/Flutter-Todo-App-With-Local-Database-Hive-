// ignore_for_file: sort_child_properties_last, sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo_app/pages/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  const DialogBox({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Add a new task"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(text: "Save", onPressed: () {}),
                const SizedBox(
                  width: 8,
                ),
                MyButton(text: "Cancel", onPressed: () {})
              ],
            ),
          ],
        ),
        height: 120,
      ),
    );
  }
}
