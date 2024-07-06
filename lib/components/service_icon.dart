import 'package:flutter/material.dart';

class ServiceIcon extends StatelessWidget {
  const ServiceIcon({super.key, required this.image, required this.onPressed});

  final ImageProvider image;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.zero,
      child: Ink(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: image,
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        width: 150,
        height: 150,
      ),
    );
  }
}
