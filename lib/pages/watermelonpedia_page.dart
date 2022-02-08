import 'package:flutter/material.dart';
import 'package:flutter_watermelon/pages/main_page.dart';
import 'package:flutter_watermelon/resource/watermelon_colors.dart';
import 'package:flutter_watermelon/styles/glass.dart';
import 'package:flutter_watermelon/widgets/action_button.dart';
import 'package:flutter_watermelon/widgets/watermelon_list.dart';

class WatermelonpediaPage extends StatelessWidget {
  const WatermelonpediaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WatermelonColors.backgroundColor,
      body: SafeArea(
        child: Stack(children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/wmbackground.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // WatermelonList(),
          const WatermelonListEng(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GlassMorphism(
              start: 0.7,
              end: 0.4,
              child: ListTile(
                title: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                  ),
                  child: Text(
                    'Short watermelonpedia'.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: WatermelonColors.greyText,
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'BalsamiqSans-Regular'),
                  ),
                ),
              ),
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 60,
              padding: const EdgeInsets.only(bottom: 14),
              child: ActionButton(
                text: 'Back',
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => MainPageContent(),
                      // Navigator.of(context).pop(
                      //   MaterialPageRoute(
                      //       builder: (context) => MainPageContent()
                    ),
                  );
                },
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
