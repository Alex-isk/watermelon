
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


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
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            color: Color(0xFFEF5350),
            borderRadius: BorderRadius.circular(80),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                letterSpacing: 4,            // межбуквенный интервал
                // height: 20,                     // высота строки
                fontSize: 20,
                color: Colors.black87,
              ),
            ),
          ),
        ),
      ),
    );
  }
}


