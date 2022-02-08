import 'package:flutter/material.dart';
import 'package:flutter_watermelon/pages/info_page.dart';
import 'package:flutter_watermelon/pages/language_page.dart';
import 'package:flutter_watermelon/resource/watermelon_colors.dart';

class IconsWidget extends StatelessWidget {
  const IconsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => LanguagePage(),
              ),
            );
          },
          child: const Icon(
            Icons.language_rounded,
            color: WatermelonColors.colorIcon,
            size: 30.0,
          ),
        ),
        Expanded(child: Container()),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => InfoPage(),
              ),
            );
          },
          child: const Icon(
            Icons.info_outline_rounded,
            color: WatermelonColors.colorIcon,
            size: 30.0,
          ),
        ),

      ],
    );
  }
}
