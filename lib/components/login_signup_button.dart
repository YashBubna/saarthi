import 'package:flutter/material.dart';

class LoginSignupButton extends StatelessWidget {
  const LoginSignupButton(
      {super.key, required this.onPress, required this.title});

  final String title;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: const BorderRadius.all(
        Radius.circular(10),
      ),
      elevation: 3,
      color: Colors.red[400],
      child: MaterialButton(
        minWidth: 400,
        onPressed: onPress,
        child: Text(title),
      ),
    );
  }
}
