import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_app/constants.dart';
import 'package:flutter_chat_app/widgets/rounded_button.dart';
import '../auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const String id = 'login_screen';

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {

  final _auth = FirebaseAuth.instance;
  late String email;
  late String password;
  bool isLoading = false;

  void changeLoadingState() => setState(() => isLoading = !isLoading);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Flexible(
              child: Hero(
                tag: 'logo',
                child: SizedBox(
                  height: 200.0,
                  child: Image.asset('images/logo.png'),
                ),
              ),
            ),
            const SizedBox(height: 48.0,),
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              decoration: kInputDecoration.copyWith(hintText: 'Enter your email'),
              onChanged: (value) { email = value; },
            ),
            const SizedBox(height: 8.0,),
            TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              decoration: kInputDecoration.copyWith(
                  prefixIcon: const Icon(Icons.lock, color: Colors.grey),
                  hintText: 'Enter your password'
              ),
              onChanged: (value) { password = value; },
            ),
            const SizedBox(height: 24.0,),
            isLoading ? const Center(child: CircularProgressIndicator()) :
            RoundedButton(
              text: 'Log In',
              onPressed: () => loginWithEmailAndPassword(
                  context, _auth, email, password, changeLoadingState),
              color: Colors.lightBlueAccent,
            ),
          ],
        ),
      ),
    );
  }
}