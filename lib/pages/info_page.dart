import 'package:flutter/material.dart';
import 'package:flutter_watermelon/pages/main_page.dart';
import 'package:flutter_watermelon/resource/watermelon_colors.dart';
import 'package:flutter_watermelon/widgets/action_button.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WatermelonColors.infoTextBackground,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.only(top: 25, left: 10, right: 10),
              child: Text(
                'Information ...\nbla bla bla \nВсе мы сейчас желаем кушать, '
                'потому что утомились и уже четвертый час, но это, душа моя Григорий Саввич,'
                'не настоящий аппетит. Настоящий, волчий аппетит, когда, кажется, целый арбуз съел бы, '
                'бывает только после физических движений.',
                textDirection: TextDirection.ltr,
                softWrap: true,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  // letterSpacing: 4, // межбуквенный интервал
                  // height: 20,                     // высота строки
                  fontSize: 10,
                  color: Colors.black87,
                ),
              ),
            ),
            Expanded(child: SizedBox()),
            SizedBox(height: 14),
            ActionButton(
              text: 'Back'.toUpperCase(),
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
              // color: Colors.black[300]
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

//
//
// class InfoPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: [
//         Container(
//           height: MediaQuery.of(context).viewPadding.top,
//           color: Colors.green[100],
//         ),
//
//         Expanded(child: Text('Information ...')),
//         const SizedBox(height: 1),
//         Row(
//           children: [
//             ActionButton(
//               text: 'Back',
//               onTap: () {
//                 Navigator.of(context).push(
//                   MaterialPageRoute(
//                     builder: (context) => MainPageContent(),
//                   ),
//                 );
//               },
//             ),
//           ],
//         ),
//
//         Container(
//           height: MediaQuery.of(context).viewPadding.bottom,
//           color: Colors.green[100],
//         ),
//       ],
//     );
//   }
// }
//
//
