import 'package:flutter/material.dart';

class UserInput extends StatelessWidget {
  final textController = TextEditingController();
  UserInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
        child: Row(
          children: [
            Expanded(
                child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: TextField(
                controller: textController,
                decoration: const InputDecoration(
                  hintText: 'add new todo',
                  border: InputBorder.none,
                ),
              ),
            )),
            const SizedBox(width: 10),
            GestureDetector(
              onTap: () {},
              child: Container(
                color: Colors.red,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: const Text('Add', 
                style:  TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),),
              ),
            )
          ],
        ));
  }
}
