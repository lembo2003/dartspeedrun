import 'package:flutter/material.dart';
import 'package:lesson1/utils/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.red[300],
      content: SizedBox(
        height: 120,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //get user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter a task",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //ok button
                MyButton(text: "Save task", onPressed: onSave),
                const SizedBox(width: 5),
                //cancel button
                MyButton(text: "Cancel", onPressed: onCancel),
              ],
            ),
            //button save,cancel
          ],
        ),
      ),
    );
  }
}
