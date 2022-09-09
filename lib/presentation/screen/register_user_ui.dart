import 'package:flutter/material.dart';
import 'package:todo_with_restapi/model/register.dart';
import '../../core/common/my_string.dart';

class RegisterUserUI extends StatefulWidget {
  RegisterUserUI({Key? key}) : super(key: key);



  @override
  State<RegisterUserUI> createState() => _RegisterUserUIState();
}

class _RegisterUserUIState extends State<RegisterUserUI> {
  var username = " ";
  var useremail = " ";
  var userpassord = " ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          MyString.appBarTitle,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Form(
          child: Column(
            children: [
              //name field.........................
              TextFormField(
                validator: (value) {
                  if (value != null && value.trim().length < 1) {
                    return 'This field requires a minimum of 1 characters';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                    labelText: 'name',
                    border: OutlineInputBorder(),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 5))),
                onChanged: (value) {
                  username = value;
                },
              ),
              const SizedBox(
                height: 10,
              ),

              //email field.........................
              TextFormField(
                validator: (value) {
                  if (value != null && value.trim().length < 1) {
                    return 'This field requires a minimum of 1 characters';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                    labelText: 'email',
                    border: OutlineInputBorder(),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 5))),
                onChanged: (value) {
                  useremail=value;
                },
              ),
              const SizedBox(
                height: 10,
              ),

              //password field.........................
              TextFormField(
                validator: (value) {
                  if (value != null && value.trim().length < 6) {
                    return 'This field requires a minimum of 6 characters';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                    labelText: 'password',
                    border: OutlineInputBorder(),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 5))),
                onChanged: (value) {
                  userpassord=value;
                },
              ),
              const SizedBox(
                height: 20,
              ),

              ElevatedButton(
                onPressed: () {
                  // Close the screen and return "Yep!" as the result.
                  Navigator.pop(context, UserRegister(username, useremail, userpassord));
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
