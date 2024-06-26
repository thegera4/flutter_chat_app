import 'package:flutter/material.dart';
import 'package:flutter_chat_app/constants.dart';
import 'package:flutter_chat_app/screens/welcome_screen.dart';
import 'package:flutter_chat_app/widgets/rounded_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const String id = 'login_screen';

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
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
            Hero(
              tag: 'logo',
              child: SizedBox(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            const SizedBox(height: 48.0,),
            TextField(
              decoration: kInputDecoration.copyWith(hintText: 'Enter your email'),
              onChanged: (value) {
                //Do something with the user input.
              },
            ),
            const SizedBox(height: 8.0,),
            TextField(
              decoration: kInputDecoration.copyWith(hintText: 'Enter your password'),
              onChanged: (value) {
                //Do something with the user input.
              },
            ),
            const SizedBox(height: 24.0,),
            RoundedButton(
              text: 'Log In',
              onPressed: (){ Navigator.pushNamed(context, WelcomeScreen.id); },
              color: Colors.lightBlueAccent,
            ),
          ],
        ),
      ),
    );
  }
}