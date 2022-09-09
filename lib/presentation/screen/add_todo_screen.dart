import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:todo_with_restapi/core/common/my_string.dart';

import '../store/add_item_screen_store.dart';

final validationStore = AddTodoStore();

class AddItems extends StatefulWidget {
  AddItems({Key? key}) : super(key: key);

  @override
  State<AddItems> createState() => _AddItemsState();
}

class _AddItemsState extends State<AddItems> {
  var itemName = " ";
  var itemDescription = " ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(MyString.addItem),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Form(
          //key: _formKey,
          child: Column(
            children: [
              //name field.........................
              TextFormField(
                /*validator: (value) {
                  if (value != null && value.trim().length < 1) {
                    return 'This field requires a minimum of 1 characters';
                  }
                  return null;
                },*/
                decoration: const InputDecoration(
                    labelText: 'name',
                    border: OutlineInputBorder(),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 5))),
                onChanged: (value) {
                  itemName = value;
                },
              ),
              const SizedBox(
                height: 10,
              ),

              //description field.........................
              TextFormField(
                /*validator: (value) {
                  if (value != null && value.trim().length < 1) {
                    return 'This field requires a minimum of 1 characters';
                  }
                  return null;
                },*/
                decoration: const InputDecoration(
                    labelText: 'description',
                    border: OutlineInputBorder(),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 5))),
                onChanged: (value) {
                  itemDescription = value;
                },
              ),
              const SizedBox(
                height: 10,
              ),

              ElevatedButton(
                onPressed: () {
                  // Close the screen and return "Yep!" as the result.
                  /*Navigator.pop(
                      context,
                      User(
                          itemName: itemName,
                          itemDescription: itemDescription));*/
                  //validationStore.validateInputs();
                },
                child: const Text('ADD ITEM'),
              ),
              Observer(
                builder: (_) => Text(

                  '${validationStore.msg}',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
