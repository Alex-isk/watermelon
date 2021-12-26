import 'package:flutter/material.dart';
import 'package:flutter_watermelon/pages/main_page.dart';
import 'package:flutter_watermelon/resource/watermelon_colors.dart';
import 'package:flutter_watermelon/widgets/action_button.dart';
import 'package:flutter_watermelon/widgets/watermelon_card.dart';

class WatermelonpediaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WatermelonColors.pink,
      body: SafeArea(
        child: Stack(children: [
          WatermelonListEng(),
          //WatermelonList(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 60,
              padding: EdgeInsets.only(bottom: 14),
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
                // color: Colors.black[300]
              ),
            ),
          ),

          // return Stack(
          // children: [
          // SuperheroesList(
          // title: 'Your favorites',
          // stream: bloc.observeFavoriteSuperheroes(),),
          // Align(alignment: Alignment.bottomCenter,
          // child: ActionButton(text: "Remove", onTap: bloc.removeFavorite))     // поскольку в () не принимаются параметры
          // // ActionButton(text: "Remove", onTap: () => bloc.removeFavorite())   // идентичен, только др написание
          // ],
          // );
        ]),
      ),
    );
  }
}

class WatermelonInfo extends StatelessWidget {
  final String name;
  final String text;
  final String image;

  const WatermelonInfo({
    Key? key,
    required this.name,
    required this.text,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 70,
      // color: Colors.white,
      // alignment: Alignment.center,
      // padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(2),
      decoration: BoxDecoration(
          color: WatermelonColors.lightpink,
          // border: Border.all(color: Colors.white, width: 1),
      ),

      child: Row(
        children: [
          Image.asset(
            image,
            fit: BoxFit.cover,
            width: 70,
            height: 70,
          ),
          const SizedBox(width: 5),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name.toUpperCase(),
                  style: TextStyle(
                      color: WatermelonColors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w700, fontFamily: 'BalsamiqSans-Regular'),
                ),
                Text(
                  text,
                    softWrap: true,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: WatermelonColors.grey,
                      fontSize: 11,
                      fontWeight: FontWeight.w300,
                      // fontStyle: FontStyle.normal,
                      fontFamily: 'BalsamiqSans-Regular'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WatermelonList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(padding: EdgeInsets.symmetric(vertical: 2), children: [
      Container(
        color: WatermelonColors.pink,
        child:
        Text('Краткая арбузопедия'.toUpperCase(), textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900, fontFamily: 'BalsamiqSans-Regular'),
        ),
      ),
      WatermelonInfo(
        name: 'Огонёк',
        text: '''
Форма: круглый
Вес: 1,5 - 3 кг
Мякоть: сочная, ярко-красная, зернистая
Вкус: сладкий
Кожура: тонкая, темно-зеленая
Семена: черные, маленькие''',
        image: 'assets/images/watermelon.jpeg',
      ),
      WatermelonInfo(
        name: 'Каролина Кросс',
        text: '''
Форма: продолговатый
Вес: более 90 кг
Мякоть: сочная, ярко-красная
Вкус: сладкий
Кожура: толстая, зеленая со светло-зелеными полосами
Семена: крупные''',
        image: 'assets/images/watermelon.jpeg',
      ),
      WatermelonInfo(
        name: 'Астраханский',
        text: '''
Форма: округлый, иногда вытянутый
Вес: 7,5-11 кг
Мякоть: сочная, ярко-красная, мелкозернистая
Вкус: сладкий, чем ярче контраст между полосами, тем насыщеннее вкус
Кожура: толстая до 2,4 см, зеленая с продольными расплывающимися полосами, матовая
Семена: черные или светло-серые''',
        image: 'assets/images/watermelon.jpeg',
      ),
      WatermelonInfo(
        name: 'Кримсон Свит (Продюсер)',
        text: '''
Форма: округлый, иногда вытянутый
Вес: 3-8 кг
Мякоть: сочная, нежная без прожилок
Вкус: сладкий, 
Кожура: толстая, зеленая с продольными расплывающимися полосами, блестит
Семена: черные''',
        image: 'assets/images/watermelon.jpeg',
      ),
      WatermelonInfo(
        name: 'Шуга Бейби',
        text: '''
Форма: круглый
Вес: 2-4 кг
Мякоть: сочная, зернистая, красная
Вкус: сладкий, 
Кожура: тонкая, темно-зеленая, гладкая
Семена: темно-бурые, много''',
        image: 'assets/images/watermelon.jpeg',
      ),
      WatermelonInfo(
        name: 'Луна и звезды',
        text: '''
Форма: круглый или вытянутый
Вес: 8-12 кг
Мякоть: сочная, зернистая, розовая или желтая
Вкус: сладкий, 
Кожура: толстая, тёмно-зелёная с жёлтыми пятнами
Семена: черные или светлые''',
        image: 'assets/images/watermelon.jpeg',
      ),
      WatermelonInfo(
        name: 'Чарльстон Грей',
        text: '''
Форма: продолговатый
Вес: 12-18 кг
Мякоть: сочная, красная или розовая 
Вкус: сладкий, 
Кожура: толстая, светло-зеленая без полосок
Семена: темно-коричневые''',
        image: 'assets/images/watermelon.jpeg',
      ),
      WatermelonInfo(
        name: 'Зима Навахо',
        text: '''
Форма: круглый
Вес: 2-3 кг
Мякоть: сочная, красная или светло-розовая 
Вкус: сладкий, 
Кожура: толстая, светло-зеленая или светло-зеленая с полосками
Семена: черные, мало''',
        image: 'assets/images/watermelon.jpeg',
      ),
      WatermelonInfo(
        name: 'Принц Гамлет',
        text: '''
Форма: округлый
Вес: 1,5-2,8 кг
Мякоть: сочная, желтая
Вкус: сладкий,
Кожура: средняя, светло-зелёная с узкими зелеными полосками
Семена: очень мало''',
        image: 'assets/images/watermelon.jpeg',
      ),
      WatermelonInfo(
        name: 'Стаболит',
        text: '''
Форма: овальный
Вес: 8-10 кг
Мякоть: красная плотная 
Вкус: сладкий, 
Кожура: средняя, темная  со светлыми, размытыми полосами
Семена: очень мало''',
        image: 'assets/images/watermelon.jpeg',
      ),
      WatermelonInfo(
        name: 'Холодок',
        text: '''
Форма: овальный
Вес: 5-7 кг
Мякоть: розовая, зернистая
Вкус: умеренно сладкая, сочная
Кожура: зеленая, полосы темно-зеленые, гладкая
Семена: коричневые, крупные''',
        image: 'assets/images/watermelon.jpeg',
      ),
      Image.asset('assets/images/watermelon.jpeg'),
      // Container(height: 30,),
    ]);
  }
}

class WatermelonListEng extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(padding: EdgeInsets.symmetric(vertical: 2), children: [
      Container(
        color: WatermelonColors.pink,
        child:
        Text('Short watermelonpedia'.toUpperCase(), textAlign: TextAlign.center,
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold, fontFamily: 'BalsamiqSans-Regular'),
        ),
      ),
      WatermelonInfo(
        name: 'The Light',
        text: '''
Shape: Round
Weight: 1.5-3 kg
Flesh: juicy, bright red, grainy
Taste: sweet
Peel: thin, dark green
Seeds: black, small''',
        image: 'assets/images/watermelon.jpeg',
      ),
      WatermelonInfo(
        name: 'The Carolina Cross',
        text: '''
Shape: Oblong
Weight: more than 90 kg
Flesh: juicy, bright red
Taste: sweet
Peel: thick, green with light green stripes
Seeds: large''',
        image: 'assets/images/watermelon.jpeg',
      ),
      WatermelonInfo(
        name: 'The Astrakhan',
        text: '''
Shape: rounded, sometimes elongated
Weight: 7.5-11 kg
Flesh: juicy, bright red, fine-grained
Taste: sweet, the brighter the contrast between the stripes, the richer the taste
Peel: thick to 2.4 cm, green with longitudinal spreading stripes, matte
Seeds: black or light gray''',
        image: 'assets/images/watermelon.jpeg',
      ),
      WatermelonInfo(
        name: 'The Crimson Sweet (Producer)',
        text: '''
Shape: rounded, sometimes elongated
Weight: 3-8 kg
Flesh: juicy, tender without streaks
Taste: sweet, 
Peel: thick, green with longitudinal spreading stripes, shiny
Seeds: black''',
        image: 'assets/images/watermelon.jpeg',
      ),
      WatermelonInfo(
        name: 'The Sugar Baby',
        text: '''
Shape: Round
Weight: 2-4 kg
Flesh: juicy, grainy, red
Taste: sweet, 
Skin: thin, dark green, smooth
Seeds: dark brown, a lot''',
        image: 'assets/images/watermelon.jpeg',
      ),
      WatermelonInfo(
        name: 'The Moon and Stars',
        text: '''
Shape: round or elongated
Weight: 8-12 kg
Flesh: juicy, grainy, pink or yellow
Taste: sweet, 
Peel: thick, dark green with yellow spots
Seeds: black or light''',
        image: 'assets/images/watermelon.jpeg',
      ),
      WatermelonInfo(
        name: 'The Charleston Grey',
        text: '''
Shape: Oblong
Weight: 12-18 kg
Flesh: juicy, red or pink 
Taste: sweet, 
Peel: thick, light green without stripes
Seeds: dark brown''',
        image: 'assets/images/watermelon.jpeg',
      ),
      WatermelonInfo(
        name: 'The Navajo Winter',
        text: '''
Shape: Round
Weight: 2-3 kg
Flesh: juicy, red or light pink 
Taste: sweet, 
Peel: thick, light green or light green with stripes
Seeds: black, few''',
        image: 'assets/images/watermelon.jpeg',
      ),
      WatermelonInfo(
        name: 'The Prince Hamlet',
        text: '''
Shape: Rounded
Weight: 1.5-2.8 kg
Flesh: juicy, yellow 
Taste: sweet, 
Peel: medium, light green with narrow green stripes
Seeds: very few''',
        image: 'assets/images/watermelon.jpeg',
      ),
      WatermelonInfo(
        name: 'The Stabolite',
        text: '''
Shape: Oval
Weight: 8-10 kg
Flesh: red dense 
Taste: sweet, 
Peel: medium, dark with light, blurred stripes
Seeds: very few''',
        image: 'assets/images/watermelon.jpeg',
      ),
      WatermelonInfo(
        name: 'The Chill',
        text: '''
Shape: Oval
Weight: 5-7 kg
Flesh: pink, grainy
Taste: moderately sweet, juicy
Peel: green, dark green stripes, smooth
Seeds: brown, large''',
        image: 'assets/images/watermelon.jpeg',
      ),
      Image.asset('assets/images/watermelon.jpeg'),
      // Container(height: 30,),
    ]);
  }
}