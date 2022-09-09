import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_with_restapi/core/common/my_string.dart';
import 'package:todo_with_restapi/presentation/screen/add_todo_screen.dart';

class MyToDoList extends StatefulWidget {
  MyToDoList({Key? key}) : super(key: key);



  @override
  State<MyToDoList> createState() => _MyToDoListState();
}

class _MyToDoListState extends State<MyToDoList> {
  Future<void> _navigateToDoAdd(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddItems()),
    );
    /*itemName = (result).itemName;
    itemDescription = (result).itemDescription;

    setState(() {
      users.add(User(itemName: itemName, itemDescription: itemDescription));
    });*/
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(MyString.appBarTitle),
      ),
      //body: MyDynamicListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _navigateToDoAdd(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
