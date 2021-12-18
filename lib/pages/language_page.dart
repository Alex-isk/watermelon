import 'package:flutter/material.dart';
import 'package:flutter_watermelon/pages/main_page.dart';
import 'package:flutter_watermelon/widgets/action_button.dart';

class LanguagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: MediaQuery.of(context).viewPadding.top,
          color: Colors.green[100],
        ),
        Expanded(
          child: Text(
            'Language ...',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              letterSpacing: 4, // межбуквенный интервал
              // height: 20,                     // высота строки
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 1),
        Row(
          children: [
            ActionButton(
              text: 'Back',
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MainPageContent(),
                  ),
                );
              },
            ),
          ],
        ),
        Container(
          height: MediaQuery.of(context).viewPadding.bottom,
          color: Colors.green[100],
        ),
      ],
    );
  }
}
