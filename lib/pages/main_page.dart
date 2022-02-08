import 'package:flutter/material.dart';
import 'package:flutter_watermelon/pages/sweet_page.dart';
import 'package:flutter_watermelon/pages/watermelonpedia_page.dart';
import 'package:flutter_watermelon/resource/watermelon_colors.dart';
import 'package:flutter_watermelon/widgets/action_button.dart';
import 'package:flutter_watermelon/widgets/icons_widget.dart';


class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainPageContent();
  }
}


class MainPageContent extends StatelessWidget {
  const MainPageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WatermelonColors.backgroundColor,
      body: SafeArea(

        child: Stack(
            children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/wmbackground.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10, top: 5, right: 10),
                  child: Expanded(
                    child: IconsWidget(),
                  ),
                ),

                // const SizedBox(height: 20),

                Text(
                  'sweet'.toLowerCase(),
                  style: const TextStyle(
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
                    style: const TextStyle(
                      fontSize: 50,
                      color: WatermelonColors.greyText,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 5, // межбуквенный интервал
                      // height: 1.1,                     // высота строки
                    ),
                  ),
                ),

                // Expanded(child: SizedBox()),

                Expanded(child: Image.asset('assets/images/front_wm.png', fit: BoxFit.cover,),),

                const SizedBox(height: 10),

                ActionButton(
                  text: 'Start',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const SweetPage(),
                      ),
                    );
                  },
                  // color: Colors.black[300]
                ),

                const SizedBox(height: 10),

                ActionButton(
                  text: 'Watermelonpedia',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const WatermelonpediaPage(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
