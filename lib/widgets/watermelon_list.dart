import 'package:flutter/material.dart';
import 'package:flutter_watermelon/widgets/watermelon_info.dart';

// class WatermelonList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ListView(padding: EdgeInsets.symmetric(vertical: 2), children: [
//       Container(
//         color: WatermelonColors.pink,
//         child:
//         Text('Краткая арбузопедия'.toUpperCase(), textAlign: TextAlign.center,
//           style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900, fontFamily: 'BalsamiqSans-Regular'),
//         ),
//       ),
//       WatermelonInfo(
//         name: 'Огонёк',
//         text: '''
// Форма: круглый
// Вес: 1,5 - 3 кг
// Мякоть: сочная, ярко-красная, зернистая
// Вкус: сладкий
// Кожура: тонкая, темно-зеленая
// Семена: черные, маленькие''',
//         image: 'assets/images/watermelon.jpeg',
//       ),
//       WatermelonInfo(
//         name: 'Каролина Кросс',
//         text: '''
// Форма: продолговатый
// Вес: более 90 кг
// Мякоть: сочная, ярко-красная
// Вкус: сладкий
// Кожура: толстая, зеленая со светло-зелеными полосами
// Семена: крупные''',
//         image: 'assets/images/watermelon.jpeg',
//       ),
//       WatermelonInfo(
//         name: 'Астраханский',
//         text: '''
// Форма: округлый, иногда вытянутый
// Вес: 7,5-11 кг
// Мякоть: сочная, ярко-красная, мелкозернистая
// Вкус: сладкий, чем ярче контраст между полосами, тем насыщеннее вкус
// Кожура: толстая до 2,4 см, зеленая с продольными расплывающимися полосами, матовая
// Семена: черные или светло-серые''',
//         image: 'assets/images/watermelon.jpeg',
//       ),
//       WatermelonInfo(
//         name: 'Кримсон Свит (Продюсер)',
//         text: '''
// Форма: округлый, иногда вытянутый
// Вес: 3-8 кг
// Мякоть: сочная, нежная без прожилок
// Вкус: сладкий,
// Кожура: толстая, зеленая с продольными расплывающимися полосами, блестит
// Семена: черные''',
//         image: 'assets/images/watermelon.jpeg',
//       ),
//       WatermelonInfo(
//         name: 'Шуга Бейби',
//         text: '''
// Форма: круглый
// Вес: 2-4 кг
// Мякоть: сочная, зернистая, красная
// Вкус: сладкий,
// Кожура: тонкая, темно-зеленая, гладкая
// Семена: темно-бурые, много''',
//         image: 'assets/images/watermelon.jpeg',
//       ),
//       WatermelonInfo(
//         name: 'Луна и звезды',
//         text: '''
// Форма: круглый или вытянутый
// Вес: 8-12 кг
// Мякоть: сочная, зернистая, розовая или желтая
// Вкус: сладкий,
// Кожура: толстая, тёмно-зелёная с жёлтыми пятнами
// Семена: черные или светлые''',
//         image: 'assets/images/watermelon.jpeg',
//       ),
//       WatermelonInfo(
//         name: 'Чарльстон Грей',
//         text: '''
// Форма: продолговатый
// Вес: 12-18 кг
// Мякоть: сочная, красная или розовая
// Вкус: сладкий,
// Кожура: толстая, светло-зеленая без полосок
// Семена: темно-коричневые''',
//         image: 'assets/images/watermelon.jpeg',
//       ),
//       WatermelonInfo(
//         name: 'Зима Навахо',
//         text: '''
// Форма: круглый
// Вес: 2-3 кг
// Мякоть: сочная, красная или светло-розовая
// Вкус: сладкий,
// Кожура: толстая, светло-зеленая или светло-зеленая с полосками
// Семена: черные, мало''',
//         image: 'assets/images/watermelon.jpeg',
//       ),
//       WatermelonInfo(
//         name: 'Принц Гамлет',
//         text: '''
// Форма: округлый
// Вес: 1,5-2,8 кг
// Мякоть: сочная, желтая
// Вкус: сладкий,
// Кожура: средняя, светло-зелёная с узкими зелеными полосками
// Семена: очень мало''',
//         image: 'assets/images/watermelon.jpeg',
//       ),
//       WatermelonInfo(
//         name: 'Стаболит',
//         text: '''
// Форма: овальный
// Вес: 8-10 кг
// Мякоть: красная плотная
// Вкус: сладкий,
// Кожура: средняя, темная  со светлыми, размытыми полосами
// Семена: очень мало''',
//         image: 'assets/images/watermelon.jpeg',
//       ),
//       WatermelonInfo(
//         name: 'Холодок',
//         text: '''
// Форма: овальный
// Вес: 5-7 кг
// Мякоть: розовая, зернистая
// Вкус: умеренно сладкая, сочная
// Кожура: зеленая, полосы темно-зеленые, гладкая
// Семена: коричневые, крупные''',
//         image: 'assets/images/watermelon.jpeg',
//       ),
//       Image.asset('assets/images/watermelon.jpeg'),
//       // Container(height: 30,),
//     ]);
//   }
// }

class WatermelonListEng extends StatelessWidget {
  const WatermelonListEng({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        // padding: EdgeInsets.all(0.0),
        children: [
          const SizedBox(height: 59),
      const WatermelonInfo(
        name: 'Light',
        text: '''
Shape: Round
Weight: 1.5-3 kg
Flesh: juicy, bright red, grainy
Taste: sweet
Peel: thin, dark green
Seeds: black, small''',
        image: 'assets/images/light.png',
      ),
      const WatermelonInfo(
        name: 'Carolina Cross',
        text: '''
Shape: Oblong
Weight: more than 90 kg
Flesh: juicy, bright red
Taste: sweet
Peel: thick, green with light green stripes
Seeds: large''',
        image: 'assets/images/carolina_cross.png',
      ),
       const WatermelonInfo(
        name: 'Astrakhan',
        text: '''
Shape: rounded, sometimes elongated
Weight: 7.5-11 kg
Flesh: juicy, bright red, fine-grained
Taste: sweet, the brighter the contrast between the stripes, the richer the taste
Peel: thick to 2.4 cm, green with longitudinal spreading stripes, matte
Seeds: black or light gray''',
        image: 'assets/images/astrakhan.png',
      ),
          const WatermelonInfo(
        name: 'Crimson Sweet (Producer)',
        text: '''
Shape: rounded, sometimes elongated
Weight: 3-8 kg
Flesh: juicy, tender without streaks
Taste: sweet, 
Peel: thick, green with longitudinal spreading stripes, shiny
Seeds: black''',
        image: 'assets/images/crimson_sweet.png',
      ),
          const WatermelonInfo(
        name: 'Sugar Baby',
        text: '''
Shape: Round
Weight: 2-4 kg
Flesh: juicy, grainy, red
Taste: sweet, 
Skin: thin, dark green, smooth
Seeds: dark brown, a lot''',
        image: 'assets/images/sugar_baby.png',
      ),
          const WatermelonInfo(
        name: 'Moon and Stars',
        text: '''
Shape: round or elongated
Weight: 8-12 kg
Flesh: juicy, grainy, pink or yellow
Taste: sweet, 
Peel: thick, dark green with yellow spots
Seeds: black or light''',
        image: 'assets/images/moon_stars.png',
      ),
          const WatermelonInfo(
        name: 'Charleston Grey',
        text: '''
Shape: Oblong
Weight: 12-18 kg
Flesh: juicy, red or pink 
Taste: sweet, 
Peel: thick, light green without stripes
Seeds: dark brown''',
        image: 'assets/images/charleston_grey.png',
      ),
          const WatermelonInfo(
        name: 'Navajo Winter',
        text: '''
Shape: Round
Weight: 2-3 kg
Flesh: juicy, red or light pink 
Taste: sweet, 
Peel: thick, light green or light green with stripes
Seeds: black, few''',
        image: 'assets/images/navajo_winter.png',
      ),
          const WatermelonInfo(
        name: 'Prince Hamlet',
        text: '''
Shape: Rounded
Weight: 1.5-2.8 kg
Flesh: juicy, yellow 
Taste: sweet, 
Peel: medium, light green with narrow green stripes
Seeds: very few''',
        image: 'assets/images/prince_hamlet.png',
      ),
          const WatermelonInfo(
        name: 'Stabolite',
        text: '''
Shape: Oval
Weight: 8-10 kg
Flesh: red dense 
Taste: sweet, 
Peel: medium, dark with light, blurred stripes
Seeds: very few''',
        image: 'assets/images/stabolite.png',
      ),
          const WatermelonInfo(
        name: 'Chill',
        text: '''
Shape: Oval
Weight: 5-7 kg
Flesh: pink, grainy
Taste: moderately sweet, juicy
Peel: green, dark green stripes, smooth
Seeds: brown, large''',
        image: 'assets/images/chill.png',
      ),
      Image.asset('assets/images/front_wm.png'),
      // Container(height: 30,),
    ]);
  }
}