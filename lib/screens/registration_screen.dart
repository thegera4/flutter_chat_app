import 'package:flutter/material.dart';
import 'package:flutter_chat_app/constants.dart';
import 'package:flutter_chat_app/screens/welcome_screen.dart';
import '../widgets/rounded_button.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  static const String id = 'registration_screen';

  @override
  RegistrationScreenState createState() => RegistrationScreenState();
}

class RegistrationScreenState extends State<RegistrationScreen> {
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
              decoration: kInputDecoration.copyWith(
                hintText: 'Enter your email',
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide:
                  BorderSide(color: Colors.blueAccent, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
              onChanged: (value) {
                //Do something with the user input.
              },
            ),
            const SizedBox(height: 8.0,),
            TextField(
              decoration: kInputDecoration.copyWith(
                hintText: 'Enter your password',
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide:
                  BorderSide(color: Colors.blueAccent, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
              onChanged: (value) {
                //Do something with the user input.
              },
            ),
            const SizedBox(height: 24.0,),
            RoundedButton(
              text: 'Register',
              onPressed: (){ Navigator.pushNamed(context, WelcomeScreen.id); },
              color: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}