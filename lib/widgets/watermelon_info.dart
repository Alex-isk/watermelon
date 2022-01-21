
import 'package:flutter/material.dart';
import 'package:flutter_watermelon/resource/watermelon_colors.dart';

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
      // margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
      image: DecorationImage(
      image: AssetImage('assets/images/wmbackground.jpg'),
      fit: BoxFit.cover,
      ),
        // color: WatermelonColors.pink,
        // border: Border.all(color: WatermelonColors.sweetText, width: 1),
      ),

      child: Row(
        children: [
          const SizedBox(width: 5),
          // Image.asset(
          //   image,
          //   fit: BoxFit.cover,
          //   width: 70,
          //   height: 70,
          // ),
          // const SizedBox(width: 10),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Center(
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                    width: 320,
                    height: 270),
                ),
                // const SizedBox(width: 50),
                Text(
                  name.toUpperCase(),
                  style: TextStyle(
                      color: WatermelonColors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.w700, fontFamily: 'BalsamiqSans-Regular'),
                ),
                // const SizedBox(width: 50),
                Text(
                  text,
                  softWrap: true,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: WatermelonColors.grey,
                      fontSize: 15,
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