// class WatermelomyPage extends StatefulWidget {
//   const FightPage({Key? key}) : super(key: key);
//
//   @override
//   FightPageState createState() => FightPageState();
// }
//
// class WatermelomyPage extends State<FightPage> {
//   static const maxLives = 5;
//
//   BodyPart? defendingBodyPart;
//   BodyPart? attackingBodyPart;
//
//   BodyPart whatEnemyAttacks = BodyPart.random();
//   BodyPart whatEnemyDefends = BodyPart.random();
//
//   int yourLives = maxLives;
//   int enemysLives = maxLives;
//
//   String centerText = '';

import 'package:flutter/material.dart';
import 'package:flutter_watermelon/pages/main_page.dart';
import 'package:flutter_watermelon/resource/watermelon_colors.dart';
import 'package:flutter_watermelon/styles/glass.dart';
import 'package:flutter_watermelon/widgets/action_button.dart';

// class SweetPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: [

//         Container(
//           height: MediaQuery.of(context).viewPadding.top,

//           color: Colors.green[100],
//         ),
//         Expanded(child: ...()),
//         Expanded(child: ...()),
//         const SizedBox(height: 1),

//         Container(
//           height: MediaQuery.of(context).viewPadding.bottom,

//           color: Colors.green[100],
//         ),
//       ],
//     );
//   }
// }

class SweetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WatermelonColors.infoTextBackground,
      body: SafeArea(
        child: GlassMorphism( 
          start: 0.6,
          end: 0.3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 10,),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    color: WatermelonColors.red2,
                    height: 100,
                    width: 100,
                  ),
                  Container(
                    color: WatermelonColors.red2,
                    height: 100,
                    width: 100,
                  ),
                  Container(
                    color: WatermelonColors.red2,
                    height: 100,
                    width: 100,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ColoredBox(
                    color: WatermelonColors.sweetText,
                    child: SizedBox(
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          'centerText',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: Colors.white24,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              // ControlsWidget(
              //   defendingBodyPart: defendingBodyPart,
              //   selectDefendingBodyPart: _selectDefendingBodyPart,
              //   attackingBodyPart: attackingBodyPart,
              //   selectAttackingBodyPart: _selectAttackingBodyPart,
              // ),
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
              // ActionButton(
              //   text: 'Back',
              // onTap: _onGoButtonClicked,
              // color: _getGoButtonColor(),
              // ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
// Color _getGoButtonColor() {
//   if (yourLives == 0 || enemysLives == 0) {
//     return FightClubColors.blackButton;
//   } else if (attackingBodyPart == null || defendingBodyPart == null) {
//     return FightClubColors.greyButton;
//   } else {
//     return FightClubColors.blackButton;
//   }
// }

// void _onGoButtonClicked() {
//   if (yourLives == 0 || enemysLives == 0) {
//     setState(() {
//       Navigator.of(context).pop();
//     });
//   } else if (attackingBodyPart != null && defendingBodyPart != null) {
//     setState(() {
//       final bool enemyLoseLife = attackingBodyPart != whatEnemyDefends;
//       final bool youLoseLife = defendingBodyPart != whatEnemyAttacks;
//       if (enemyLoseLife) {
//         enemysLives -= 1;
//       }
//       if (youLoseLife) {
//         yourLives -= 1;
//       }
//       final FightResult? fightResult =
//       FightResult.calculateResult(yourLives, enemysLives);
//       if (fightResult != null) {
//         SharedPreferences.getInstance().then((sharedPreferences) {
//           sharedPreferences.setString(
//               'last_fight_result', fightResult.result);
//           final String key = ('stats_${fightResult.result.toLowerCase()}'); // сначала вычисляем ключ - lost или won или drow
//           final int currentValue = sharedPreferences.getInt(key) ?? 0;   // ключ = 0 то возвращаем то что справа от ?? - те 0
//           sharedPreferences.setInt(key, currentValue + 1);    // сохранить по этому ключу значение  прибавив 1
//         });
//       }
//       centerText = _calculateCenterText(youLoseLife, enemyLoseLife);
//
//       whatEnemyDefends = BodyPart.random();
//       whatEnemyAttacks = BodyPart.random();
//
//       attackingBodyPart = null;
//       defendingBodyPart = null;
//     });
//   }
// }

//   String _calculateCenterText(
//       final bool youLoseLife, final bool enemyLoseLife) {
//     if (enemysLives == 0 && yourLives == 0) {
//       return 'Draw';
//     } else if (yourLives == 0) {
//       return 'You lost';
//     } else if (enemysLives == 0) {
//       return 'You won';
//     } else {
//       final String first = enemyLoseLife
//           ? "You hit enemy's ${attackingBodyPart!.name.toLowerCase()}."
//           : "Your attack was blocked.";
//       final String second = youLoseLife
//           ? "Enemy hit your ${attackingBodyPart!.name.toLowerCase()}."
//           : "Enemy's attack was blocked.";
//       return '$first\n$second';
//     }
//   }
//
//   void _selectDefendingBodyPart(final BodyPart value) {
//     if (yourLives == 0 || enemysLives == 0) {
//       return;
//     }
//     setState(() {
//       defendingBodyPart = value;
//     });
//   }
//
//   void _selectAttackingBodyPart(final BodyPart value) {
//     if (yourLives == 0 || enemysLives == 0) {
//       return;
//     }
//     setState(() {
//       attackingBodyPart = value;
//     });
//   }
// }
//
// class FightersInfo extends StatelessWidget {
//   final int maxLivesCount;
//   final int yourLivesCount;
//   final int enemysLivesCount;
//
//   const FightersInfo({
//     Key? key,
//     required this.maxLivesCount,
//     required this.yourLivesCount,
//     required this.enemysLivesCount,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 160,
//       child: Stack(
//         // alignment: AlignmentDirectional.center,
//         children: [
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               Expanded(
//                 child: ColoredBox(color: FightClubColors.white),
//               ),
//               Expanded(
//                 child: DecoratedBox(
//                   decoration: BoxDecoration(
//                       gradient: LinearGradient(
//                         colors: [FightClubColors.white, FightClubColors.purple],
//                       )),
//                 ),
//               ),
//               Expanded(
//                 child: ColoredBox(color: FightClubColors.purple),
//               ),
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               LivesWidget(
//                 overallLivesCount: maxLivesCount,
//                 currentLivesCount: yourLivesCount,
//               ),
//               Column(
//                 children: [
//                   const SizedBox(height: 16),
//                   Text(
//                     'You',
//                     style: TextStyle(color: FightClubColors.darkGreyText),
//                   ),
//                   const SizedBox(height: 12),
//                   Image.asset(
//                     FightClubImages.youAvatar,
//                     height: 92,
//                     width: 92,
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 44,
//                 width: 44,
//                 child: DecoratedBox(
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: FightClubColors.blueButton,
//                   ),
//                   child: Center(
//                       child: Text(
//                         'vs',
//                         style:
//                         TextStyle(color: FightClubColors.white, fontSize: 16),
//                       )),
//                 ),
//               ),
//               Column(
//                 children: [
//                   const SizedBox(height: 16),
//                   Text(
//                     'Enemy',
//                     style: TextStyle(color: FightClubColors.darkGreyText),
//                   ),
//                   const SizedBox(height: 12),
//                   Image.asset(
//                     FightClubImages.enemyAvatar,
//                     height: 92,
//                     width: 92,
//                   ),
//                 ],
//               ),
//               LivesWidget(
//                 overallLivesCount: maxLivesCount,
//                 currentLivesCount: enemysLivesCount,
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class ControlsWidget extends StatelessWidget {
//   final BodyPart? defendingBodyPart;
//   final ValueSetter<BodyPart> selectDefendingBodyPart;
//   final BodyPart? attackingBodyPart;
//   final ValueSetter<BodyPart> selectAttackingBodyPart;
//
//   const ControlsWidget(
//       {Key? key,
//         required this.defendingBodyPart,
//         required this.selectDefendingBodyPart,
//         required this.attackingBodyPart,
//         required this.selectAttackingBodyPart})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         SizedBox(width: 16),
//         Expanded(
//           child: Column(
//             children: [
//               Text(
//                 'Defend'.toUpperCase(),
//                 style: TextStyle(color: FightClubColors.darkGreyText),
//               ),
//               SizedBox(height: 13),
//               BodyPartButton(
//                 bodyPart: BodyPart.head,
//                 selected: defendingBodyPart == BodyPart.head,
//                 bodyPartSetter: selectDefendingBodyPart,
//               ),
//               SizedBox(height: 14),
//               BodyPartButton(
//                 bodyPart: BodyPart.torso,
//                 selected: defendingBodyPart == BodyPart.torso,
//                 bodyPartSetter: selectDefendingBodyPart,
//               ),
//               SizedBox(height: 14),
//               BodyPartButton(
//                 bodyPart: BodyPart.legs,
//                 selected: defendingBodyPart == BodyPart.legs,
//                 bodyPartSetter: selectDefendingBodyPart,
//               ),
//             ],
//           ),
//         ),
//         SizedBox(width: 12),
//         Expanded(
//           child: Column(
//             children: [
//               Text(
//                 'Attack'.toUpperCase(),
//                 style: TextStyle(color: FightClubColors.darkGreyText),
//               ),
//               SizedBox(height: 13),
//               BodyPartButton(
//                 bodyPart: BodyPart.head,
//                 selected: attackingBodyPart == BodyPart.head,
//                 bodyPartSetter: selectAttackingBodyPart,
//               ),
//               SizedBox(height: 14),
//               BodyPartButton(
//                 bodyPart: BodyPart.torso,
//                 selected: attackingBodyPart == BodyPart.torso,
//                 bodyPartSetter: selectAttackingBodyPart,
//               ),
//               SizedBox(height: 14),
//               BodyPartButton(
//                 bodyPart: BodyPart.legs,
//                 selected: attackingBodyPart == BodyPart.legs,
//                 bodyPartSetter: selectAttackingBodyPart,
//               ),
//             ],
//           ),
//         ),
//         SizedBox(width: 16),
//       ],
//     );
//   }
// }
//
// class LivesWidget extends StatelessWidget {
//   final int overallLivesCount;
//   final int currentLivesCount;
//
//   const LivesWidget({
//     Key? key,
//     required this.overallLivesCount,
//     required this.currentLivesCount,
//   })  : assert(overallLivesCount >= 1),
//         assert(currentLivesCount >= 0),
//         assert(currentLivesCount <= overallLivesCount),
//         super(key: key);
//
// // assert - ограничение
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: List.generate(overallLivesCount, (index) {
//         if (index < currentLivesCount) {
//           return Padding(
//             padding:
//             EdgeInsets.only(bottom: index < overallLivesCount - 1 ? 4 : 0),
//             child: Image.asset(FightClubIcons.heartFull, width: 18, height: 18),
//           );
//         } else {
//           return Padding(
//             padding:
//             EdgeInsets.only(bottom: index < overallLivesCount - 1 ? 4 : 0),
//             child:
//             Image.asset(FightClubIcons.heartEmpty, width: 18, height: 18),
//           );
//         }
//       }),
//     );
//   }
// }
//
// class BodyPart {
//   final String name;
//   const BodyPart._(this.name);
//
//   static const head = BodyPart._('Head');
//   static const torso = BodyPart._('Torso');
//   static const legs = BodyPart._('Legs');
//   @override
//   String toString() {
//     return 'BodyPart{name: $name}';
//   }
//
//   static const List<BodyPart> _values = [head, torso, legs];
//
//   static BodyPart random() {
//     return _values[Random().nextInt(_values.length)];
//   }
// }
//
// class BodyPartButton extends StatelessWidget {
//   final BodyPart bodyPart;
//   final bool selected;
//   final ValueSetter<BodyPart> bodyPartSetter;
//
//   const BodyPartButton(
//       {Key? key,
//         required this.bodyPart,
//         required this.selected,
//         required this.bodyPartSetter})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => bodyPartSetter(bodyPart),
//       child: SizedBox(
//         height: 40,
//         child: DecoratedBox(
//           decoration: BoxDecoration(
//             color: selected ? FightClubColors.blueButton : Colors.transparent,
//             border: !selected
//                 ? Border.all(color: FightClubColors.darkGreyText, width: 2)
//                 : null,
//           ),
//           child: Center(
//             child: Text(
//               bodyPart.name.toUpperCase(),
//               style: TextStyle(
//                 color: selected
//                     ? FightClubColors.whiteText
//                     : FightClubColors.darkGreyText,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
