import 'package:flutter/material.dart';
import 'package:flutter_watermelon/pages/info_page.dart';
import 'package:flutter_watermelon/pages/language_page.dart';
import 'package:flutter_watermelon/pages/sweet_page.dart';
import 'package:flutter_watermelon/pages/watermelonpedia_page.dart';
import 'package:flutter_watermelon/resource/watermelon_colors.dart';
import 'package:flutter_watermelon/styles/glass.dart';
import 'package:flutter_watermelon/widgets/action_button.dart';
import 'package:flutter_watermelon/widgets/icons_widget.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainPageContent();
  }
}

/* TO DO
1 - иконки
- переключения языка - англ-рус
- инфо - значeк -> страница с описанием + авторство
2 - картинка - фон Да + sweet др шрифтом, цветом
 */

class MainPageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.green[200],
      backgroundColor: WatermelonColors.red3,
      // backgroundColor: Color.fromRGBO(206,255,29, 20),
      // backgroundColor: Color.fromRGBO(117,184,85, 20), // light green
      // backgroundColor: Colors.black87,      //Color(0xFFC4825B),
      body: SafeArea(
        child: Expanded(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 5, right: 10),
                child: Expanded(
                  child: IconsWidget(),
                ),
              ),
              Text(
                'sweet',
                style: TextStyle(
                  // color: Color(0xFFEF5350),
                  color: WatermelonColors.sweetText,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 4, // межбуквенный интервал
                  // height: 20,                     // высота строки
                  fontSize: 24,
                  fontFamily: 'WatermelonScript',
                ),
              ),
              Center(
                child: Text(
                  'Water\nMelon'.toUpperCase(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 50,
                    color: WatermelonColors.infoTextBackground,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 5, // межбуквенный интервал
                    // height: 1.1,                     // высота строки
                  ),
                ),
              ),
              Expanded(child: SizedBox()),
              // Image.asset('assets/images/watermelon.jpeg'),
              SizedBox(height: 10),
              ActionButton(
                text: 'Start',
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SweetPage(),
                    ),
                  );
                },
                // color: Colors.black[300]
              ),
              // Stack(alignment: Alignment.bottomCenter,
              //     children: [
              //   Container(height: 250),
              //   Image.asset('assets/images/watermelon.jpeg'),
              //   ActionButton(
              //     text: 'Start'.toUpperCase(),
              //     onTap: () {
              //       Navigator.of(context).push(
              //         MaterialPageRoute(
              //           builder: (context) => WatermelonPage(),
              //         ),
              //       );
              //     },
              //     // color: Colors.black[300]
              //   ),
              // ]),
              SizedBox(height: 10),

              ActionButton(
                text: 'Watermelonpedia',
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => WatermelonpediaPage(),
                    ),
                  );
                },
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
