import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_app/constants.dart';
import 'package:flutter_chat_app/screens/chat_screen.dart';
import 'package:flutter_chat_app/screens/welcome_screen.dart';

void loginWithEmailAndPassword(BuildContext context, FirebaseAuth fbInstance,
    String email, String password) async {
  try {
    final user = await fbInstance
        .signInWithEmailAndPassword(email: email, password: password);
    if (context.mounted && user.user != null) {
      ScaffoldMessenger.of(context).showSnackBar(kLoginOkSnackbar);
      Navigator.pushNamed(context, ChatScreen.id);
    }
  } on FirebaseAuthException catch (e) {
    if (e.code == 'invalid-credential') {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(kCredentialsNotOkSnackbar);
      }
    } else {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(kGenericNotOkSnackbar);
      }
    }
  }
}

void registerWithEmailAndPassword(BuildContext context, FirebaseAuth fbInstance,
    String email, String password) async {
  try {
    final user = await fbInstance
        .createUserWithEmailAndPassword(email: email, password: password);
    if (context.mounted && user.user != null) {
      ScaffoldMessenger.of(context).showSnackBar(kRegistrationOkSnackbar);
      Navigator.pushNamed(context, WelcomeScreen.id);
    }
  } on FirebaseAuthException catch (e) {
    if (e.code == 'email-already-in-use') {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(kEmailInUseSnackbar);
      }
    } else if (e.code == 'weak-password') {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(kWeakPasswordSnackbar);
      }
    } else {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(kGenericNotOkSnackbar);
      }
    }
  }
}