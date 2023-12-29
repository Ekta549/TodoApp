import 'package:flutter/material.dart';
import './screens/homepage.dart';
import './module/db_model.dart';
import './module/todo_module.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var db = DatabaseConnect();
  await db.insertTodo(Todo(
      id: 1,
      title: 'this is a sample todo',
      creationDate: DateTime.now(),
      isChecked: false));
  print(await db.getTodo());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Homepage(),
    );
  }
}
