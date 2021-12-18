import 'package:flutter/material.dart';
import 'package:flutter_watermelon/pages/main_page.dart';
import 'package:flutter_watermelon/resource/watermelon_colors.dart';
import 'package:flutter_watermelon/widgets/action_button.dart';
import 'package:flutter_watermelon/widgets/watermelon_card.dart';

class WatermelonpediaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WatermelonColors.infoTextBackground,
      body: SafeArea(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'position'.toString(),
                      style: TextStyle(fontSize: 22.0),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

//         ListView.builder(
//         keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,   //Автоматически скрывать клавиатуру при скролле
//           //  название списка положим в список - будет скролится - в противном случае статичен
//           itemBuilder: (BuildContext context, int index)
//     {
//             if (index == 0) {
//               return Padding(
//                 padding: const EdgeInsets.only(left: 16, right: 16, top: 90, bottom: 12),
//                 child: Text(
//                 '  title,',
//                   // textAlign: TextAlign.start,
//                   style: TextStyle(
//                     color: WatermelonColors.blackText,
//                     fontSize: 24,
//                     fontWeight: FontWeight.w800,
//                   ),
//                 ),
//               );
//             }
//             // final WatermelonInfo item = watermelons[index - 1];
//             return Padding(
//               padding: const EdgeInsets.only(left: 16, right: 16),
//               child: Container(
//                 color: Colors.amber,
//               ),
//             ),
//     ),
//     ),
//     ),
//   }
// }

//             SizedBox(height: 14),
//             Align(
//               alignment: Alignment.bottomCenter,
//               child: ActionButton(
//                 text: 'Back'.toUpperCase(),
//                 onTap: () {
//                   Navigator.of(context).push(
//                     MaterialPageRoute(
//                       builder: (context) => MainPageContent(),
//                       // Navigator.of(context).pop(
//                       //   MaterialPageRoute(
//                       //       builder: (context) => MainPageContent()
//                     ),
//                   );
//                 },
//                 // color: Colors.black[300]
//               ),
//             ),
//             // ActionButton(
//             //   text: 'Back',
//             // onTap: _onGoButtonClicked,
//             // color: _getGoButtonColor(),
//             // ),
//             SizedBox(height: 16),
//           ],
//         ),
//       ),
//     );
//   }
// }

//
// class WatermelonpediaPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: WatermelonColors.infoTextBackground,
//       body: SafeArea(
//         child: Column(
//           // crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             ListView.separated(
//               keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,   //Автоматически скрывать клавиатуру при скролле
//
//               itemCount: watermelons.length + 1,
//               //  название списка положим в список - будет скролится - в противном случае статичен
//               itemBuilder: (BuildContext context, int index) {
//                 if (index == 0) {
//                   return Padding(
//                     padding: const EdgeInsets.only(left: 16, right: 16, top: 90, bottom: 12),
//                     child: Text(
//                       title,
//                       // textAlign: TextAlign.start,
//                       style: TextStyle(
//                         color: WatermelonColors.blackText,
//                         fontSize: 24,
//                         fontWeight: FontWeight.w800,
//                       ),
//                     ),
//                   );
//                 }
//                 final WatermelonInfo item = watermelons[index - 1];
//                 return Padding(
//                   padding: const EdgeInsets.only(left: 16, right: 16),
//                   child: WatermelonCard(
//
//                     // watermelonInfo:
//
//                     onTap: () {  },
//                     item.name,
//                     realName: item.realName,
//                     imageUrl: item.imageUrl,
//                     onTap: () {
//                       Navigator.of(context).push(
//                         MaterialPageRoute(
//                           builder: (conext) => WatermelonPage(name: item.name, onTap: () { },), // ...
//                         ),
//                       );
//                     },
//                   ),
//                 );
//               }, separatorBuilder: (BuildContext context, int index) {
//               return const SizedBox(height: 8);
//             },
//             )
//             ,
//
//
//
//             SizedBox(height: 14),
//             Align(
//               alignment: Alignment.bottomCenter,
//               child: ActionButton(
//                 text: 'Back'.toUpperCase(),
//                 onTap: () {
//                   Navigator.of(context).push(
//                     MaterialPageRoute(
//                       builder: (context) => MainPageContent(),
//                       // Navigator.of(context).pop(
//                       //   MaterialPageRoute(
//                       //       builder: (context) => MainPageContent()
//                     ),
//                   );
//                 },
//                 // color: Colors.black[300]
//               ),
//             ),
//             // ActionButton(
//             //   text: 'Back',
//             // onTap: _onGoButtonClicked,
//             // color: _getGoButtonColor(),
//             // ),
//             SizedBox(height: 16),
//           ],
//         ),
//       ),
//     );
//   }
// }

//
//
// class WatermelonList extends StatelessWidget {
//   final String title;
//   final Stream<List<WatermelonInfo>> stream;
//
//   const WatermelonList({
//     Key? key,
//     required this.title,
//     required this.stream,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<List<WatermelonInfo>>(
//         stream: stream,
//         builder: (context, snapshot) {
//           if (!snapshot.hasData || snapshot.data == null) {
//             return const SizedBox.shrink();
//           }
//           final List<WatermelonInfo> watermelons = snapshot.data!;
//           return ListView.separated(
//             keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,   //Автоматически скрывать клавиатуру при скролле
//
//             itemCount: watermelons.length + 1,
//             //  название списка положим в список - будет скролится - в противном случае статичен
//             itemBuilder: (BuildContext context, int index) {
//               if (index == 0) {
//                 return Padding(
//                   padding: const EdgeInsets.only(left: 16, right: 16, top: 90, bottom: 12),
//                   child: Text(
//                     title,
//                     // textAlign: TextAlign.start,
//                     style: TextStyle(
//                       color: WatermelonColors.blackText,
//                       fontSize: 24,
//                       fontWeight: FontWeight.w800,
//                     ),
//                   ),
//                 );
//               }
//               final WatermelonInfo item = watermelons[index - 1];
//               return Padding(
//                 padding: const EdgeInsets.only(left: 16, right: 16),
//                 child: WatermelonCard(
//
//                   watermelonInfo: item,  //add
//
//                   // name: item.name,
//                   // realName: item.realName,
//                   // imageUrl: item.imageUrl,
//                   onTap: () {
//                     Navigator.of(context).push(
//                       MaterialPageRoute(
//                         builder: (conext) => WatermelonCard(name: item.name, onTap: () { },), // ...
//                       ),
//                     );
//                   },
//                 ),
//               );
//             }, separatorBuilder: (BuildContext context, int index) {
//             return const SizedBox(height: 8);
//           },
//           );
//         });
//   }
// }
//
//
//
//
//
//
//
//
//
//
//
// class WatermelonInfo {
//   final String name;
//   final String text;
//   final String image;
//
//
//   const WatermelonInfo(
//       {required this.name, required this.text, required this.image});
//
//   // cmd + N ->  toString()  -> добавляем метод toString()
//   // -> для того, чтобы при дебаге получать читабельный код ->
//   @override
//   String toString() {
//     return 'WatermelonInfo{name: $name, text: $text, image: $image}';
//   }
//
//   // cmd + N ->  ==() and hashCode  ->
//   // выбрать все (переопределяем равно(equally) и hashCode)
//   // чтобы сравнивались объекты по контенту6 который внутри есть->
//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//           other is WatermelonInfo &&
//               runtimeType == other.runtimeType &&
//               name == other.name &&
//               text == other.text &&
//               image == other.image;
//
//   @override
//   int get hashCode => name.hashCode ^ text.hashCode^ image.hashCode;
//
//   // коллекция, которая позволяет отображать данные, которые еще не получены с сервера ->
//   static const mocked = [
//     WatermelonInfo(
//       name: 'Астраханский',
//       text: 'описание',
//       image: 'рисунок',
//     ),
//     WatermelonInfo(
//       name: 'Астраханский',
//       text: 'описание',
//       image: 'рисунок',
//     ),
//     WatermelonInfo(
//       name: 'Астраханский',
//       text: 'описание',
//       image: 'рисунок',
//     ),
//   ];
// }
