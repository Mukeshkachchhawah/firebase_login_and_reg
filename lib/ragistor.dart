import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:login_and_ragistration/homepage.dart';

class Ragistor extends StatefulWidget {
  const Ragistor({Key? key}) : super(key: key);

  @override
  State<Ragistor> createState() => _RagistorState();
}

class _RagistorState extends State<Ragistor> {
  bool changeButton = false;
  final _formkey = GlobalKey<FormState>();
  String username = '';
  String lastname = '';
  String phonenumber = '';
  String email = '';
  String password = '';

  sumbit() {
    final isValid = _formkey.currentState!.validate();
    if (isValid) {
      _formkey.currentState!.save();
      sumbitForm();
    } else {
      print('Erroe');
    }
  }

  sumbitForm() {
    print(username);
    print(lastname);
    print(phonenumber);
    print(email);
    print(password);
  }

  // Ragistration page second option print and output Reslut is right
  // final usernamecontroller = TextEditingController();
  // final lastnamecontroller = TextEditingController();
  // final phonenumbercontroller = TextEditingController();
  // final emailcontroller = TextEditingController();
  // final passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Form(
        key: _formkey,
        child: Column(
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.only(top: 100),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/registration.png'))),
                child: Text(
                  'Ragistration',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'RobotoMono'),
                ),
              ),
            ),
            SizedBox(
              height: 23,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: TextFormField(
                key: ValueKey('User Name'),
                //      controller: usernamecontroller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'User Name',
                    labelStyle: TextStyle(fontWeight: FontWeight.bold)),
                validator: (value) {
                  if (value.toString().isEmpty) {
                    return 'User Name  is not Empty';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  username = value.toString();
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: TextFormField(
                //       controller: lastnamecontroller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Last Name',
                    labelStyle: TextStyle(fontWeight: FontWeight.bold)),
                validator: (value) {
                  if (value.toString().isEmpty) {
                    return 'last name is not empty';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  lastname = value.toString();
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: TextFormField(
                //     controller: phonenumbercontroller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Phone Number',
                    labelStyle: TextStyle(fontWeight: FontWeight.bold)),
                validator: (value) {
                  if (value.toString().length < 10) {
                    return 'Enter 10 digital number';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  phonenumber = value.toString();
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: TextFormField(
                //      controller: emailcontroller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Email',
                    labelStyle: TextStyle(fontWeight: FontWeight.bold)),
                validator: (value) {
                  if (value.toString().isEmpty) {
                    return 'email is be not empty';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  email = value.toString();
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: TextFormField(
                //      controller: passwordcontroller,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Password',
                    labelStyle: TextStyle(fontWeight: FontWeight.bold)),
                validator: (value) {
                  if (value.toString().length < 6) {
                    return 'Minimum length of password should be 6 chartar';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  password = value.toString();
                },
              ),
            ),
            Material(
              color: Colors.green,
              borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
              child: InkWell(
                onTap: () {
                  setState(() {
                    changeButton = true;
                  });
                  sumbit();
                  // Ragistration page second option print and output Reslut is right
                  // print(usernamecontroller.text);
                  // print(lastnamecontroller.text);

                  // print(phonenumbercontroller.text);
                  // print(emailcontroller.text);
                  // print(passwordcontroller.text);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: AnimatedContainer(
                    duration: Duration(seconds: 6),
                    height: 44,
                    width: changeButton ? 50 : 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 5, 1, 247),
                    ),
                    alignment: Alignment.center,
                    child: changeButton
                        ? Icon(Icons.done)
                        : Text(
                            "Contiun",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Go Back Sing In Page "),
            SizedBox(
              height: 10,
            ),
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.red,
                ))
          ],
        ),
      ),
    ));
  }
}
