import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonText,
    this.borderRadius = 50,
    this.width = 120,
    this.height = 48,
    this.onTap,
  });

  final String buttonText;
  final double borderRadius;
  final double width;
  final double height;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.amber,
      borderRadius: BorderRadius.circular(borderRadius),
      child: InkWell(
        splashColor: Colors.blueAccent,

        borderRadius: BorderRadius.circular(borderRadius),
        onTap: onTap,
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
          child: Center(child: Text(buttonText)),
        ),
      ),
    );
  }
}
