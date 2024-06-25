import 'package:flutter/material.dart';
import 'package:flutter_chat_app/screens/registration_screen.dart';
import 'package:flutter_chat_app/widgets/rounded_button.dart';
import 'login_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  static const String id = 'welcome_screen';

  @override
  WelcomeScreenState createState() => WelcomeScreenState();
}

class WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin {

  late AnimationController controller;
  late Animation animation;

  @override
  void initState(){
    super.initState();
    controller = AnimationController(duration: const Duration(seconds: 1), vsync: this,);
    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white).animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose(){
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: SizedBox(height: 60.0, child: Image.asset('images/logo.png'),),
                ),
                SizedBox(
                  width: 250.0,
                  child: DefaultTextStyle(
                    style: const TextStyle(fontSize: 30.0, color: Colors.indigo),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText('Quick Chat', speed: const Duration(milliseconds: 60)),
                        TypewriterAnimatedText('QChat', speed: const Duration(milliseconds: 60)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 48.0,),
            const RoundedButton(
              text: 'Log In',
              screenId: LoginScreen.id,
              color: Colors.lightBlueAccent,
            ),
            const RoundedButton(
              text: 'Register',
              screenId: RegistrationScreen.id,
              color: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}