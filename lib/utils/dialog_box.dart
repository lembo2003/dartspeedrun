import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.red[300],
      content: Container(
        height: 200,
        child: Column(
          children: [
            //get user input
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter a task",
              ),
            ),
            Row(
              children: [
                //ok button

                //cancel button
              ],
            ),
            //button save,cancel
          ],
        ),
      ),
    );
  }
}
