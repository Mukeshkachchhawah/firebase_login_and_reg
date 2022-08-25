import 'package:firebase_auth/firebase_auth.dart';

signup(String emailAddress, String password) async {
  try {
    final credential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailAddress,
      password: password,
    );
    print('Login Sussfully');
    // print(phonenumbercontroller.text);
    // print(passwordcontroller.text);
    // Navigator.push(context,
    //     MaterialPageRoute(builder: (context) => HomePage()));
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      print('The account already exists for that email.');
    }
  } catch (e) {
    print(e);
  }
}
