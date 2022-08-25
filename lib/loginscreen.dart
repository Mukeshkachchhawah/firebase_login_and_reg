import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_and_ragistration/homepage.dart';
import 'package:login_and_ragistration/ragistor.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  // final emailcontroller = TextEditingController();
  // final passwordcontroller = TextEditingController();

  String email = '';
  String password = '';
  trysubmit() {
    final isvalid = _formKey.currentState!.validate();
    if (isvalid) {
      _formKey.currentState!.save();
      submitfrom();
    } else {
      print('Error');
    }
  }

  submitfrom() {
    print(email);
    print(password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 130),
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage('assets/user.png'))),
                child: Text(
                  'User Login',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'italik'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 80),
                child: TextFormField(
                  key: ValueKey('Enter Email'),
                  //      controller: emailcontroller,
                  decoration: InputDecoration(
                      hintText: 'Username',
                      suffixIcon: Icon(Icons.person),
                      //  helperText: 'Username',
                      hoverColor: Color.fromARGB(255, 241, 0, 80),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return 'Email is not Empty';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    email = value.toString();
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 14),
                child: TextFormField(
                  key: ValueKey('Password'),
                  //   controller: passwordcontroller,
                  obscureText: true,
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.lock),
                      hintText: 'Password',
                      hoverColor: Color.fromARGB(255, 241, 0, 80),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  validator: (value) {
                    if (value.toString().length < 6) {
                      return 'Maximum 6 Charetar password enter';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    password = value.toString();
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(
                      " Change Your : ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Text(
                        'Password',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.red),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
                child: InkWell(
                  onTap: () {
                    trysubmit();
                    // if (_formKey.currentState!.validate()) {
                    //   _formKey.currentState!.save();
                    //   signup(email, password);
                    // }
                    // //        print(emailcontroller.text);
                    // //      print(passwordcontroller.text);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Container(
                    height: 44,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red,
                    ),
                    child: Center(
                        child: Text(
                      "Log in",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Ragistor()));
                  },
                  child: Container(
                    height: 44,
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 5, 1, 247),
                    ),
                    child: Text(
                      "sing up",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
