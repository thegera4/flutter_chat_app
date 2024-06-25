import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    super.key,
    required this.text,
    required this.screenId,
    required this.color,
    this.textColor = Colors.white,
  });

  final String text;
  final String screenId;
  final Color color;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: () { Navigator.pushNamed(context, screenId); },
          minWidth: 200.0,
          height: 42.0,
          child: Text(text, style: TextStyle(color: textColor),),
        ),
      ),
    );
  }
}