
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_watermelon/resource/watermelon_colors.dart';
import 'package:flutter_watermelon/styles/glass.dart';


class ActionButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;


  const ActionButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          width: double.infinity,
          // alignment: Alignment.bottomCenter, /// for Container
          // decoration: BoxDecoration(
          //   color: Color(0xFFEF5350),
          //   borderRadius: BorderRadius.circular(80),
          // ),
          child: GlassMorphism(
            start: 0.5,       // 0.3
            end: 0.3,         // 0.1
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                text.toUpperCase(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  letterSpacing: 4,            // межбуквенный интервал
                  // height: 20,                     // высота строки
                  fontSize: 20,
                  color: WatermelonColors.buttonText,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


