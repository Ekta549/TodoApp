import 'package:flutter/material.dart';
import 'package:todo_list/widgets/user_input.dart';


class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text('simple todo app'),
      ),
      body: Column(
        children: [
          UserInput(),
        ],
      ),
    );
  }
}
