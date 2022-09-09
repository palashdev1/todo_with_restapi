import 'package:flutter/material.dart';
import 'package:todo_with_restapi/presentation/screen/my_todo_list.dart';
import 'package:todo_with_restapi/presentation/screen/register_user_ui.dart';

import 'core/common/my_string.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: MyString.appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyToDoList(),
    );
  }
}