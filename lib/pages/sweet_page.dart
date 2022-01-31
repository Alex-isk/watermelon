// import 'dart:html';
// import 'dart:io';

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_watermelon/pages/main_page.dart';
import 'package:flutter_watermelon/resource/watermelon_colors.dart';
import 'package:flutter_watermelon/styles/glass.dart';
import 'package:flutter_watermelon/widgets/action_button.dart';
import 'package:flutter_watermelon/widgets/sleek_slider_weight.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class SweetPage extends StatefulWidget {
  @override
  State<SweetPage> createState() => _SweetPageState();
}

class _SweetPageState extends State<SweetPage> {
  // double _value = 0.5;
  // String _status = 'Start';
  // Color _statusColor = Colors.red;
  // final slider = SleekCircularSlider;

  File? image;
  uploadImage() async {
    var pickedImage = await ImagePicker().pickImage(source: ImageSource.camera);

    /// .camera
    setState(() {
      image = File(pickedImage!.path);
    });
  }

  // String percentageModifier(double value) {
  //   final roundedValue = value.ceil().toInt().toString();
  //   return '$roundedValue kg';
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WatermelonColors.red4,
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   tooltip: 'Increment',
      //   child: Icon(Icons.blur_circular_outlined, color: WatermelonColors.red4,),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      // // backgroundColor: WatermelonColors.infoTextBackground,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/wmbackground.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 30,
              ),

              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // const SizedBox(width: 5),

                        SleekSliderWeight(
                          counterClockwise: false,
                          initialValue: 1,
                          min: 0,
                          max: 25,
                          text: 'kilogram',
                        ),
                        // Expanded(child: SizedBox()),
                        SleekSliderWeight(
                          counterClockwise: true,
                          initialValue: 10,
                          min: 0,
                          max: 1000,
                          text: 'grams',
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'weight'.toUpperCase(),
                      // textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0, // межбуквенный интервал
                        // height: 20,                     // высота строки
                        fontSize: 20,
                        color: WatermelonColors.lightpink,
                      ),
                    ),
                  ),
                ],
              ),

              //
              // Slider(
              //   min: 0.0,
              //   max: 30.0,
              //   divisions: 100,
              //   label: '${_value.round()}',
              //   activeColor: WatermelonColors.grey,
              //   inactiveColor: WatermelonColors.lightpink,
              //   thumbColor: WatermelonColors.grey,
              //   value: _value,
              //   onChanged: (value) {
              //     setState(() {
              //       _value = value;
              //     });
              //   },
              // ),

              // Container(
              //   width: double.infinity,
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: [
              //       ElevatedButton(
              //         onPressed: () {},
              //         child: Text('Unload Image'),
              //       ),
              //       image == null
              //           ? Text('Not image')
              //           : ClipRect(
              //               /// ClipRRect(  borderRadius.circular(20.0)
              //               clipBehavior: Clip.antiAlias,
              //               child: Image.file(
              //                 image!,
              //                 height: 400,
              //                 width: 300,
              //               ),
              //             ),
              //     ],
              //   ),
              // ),

              Expanded(
                child: const SizedBox(
                  height: 30,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: ActionButton(
                  text: 'Measure',
                  onTap: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //     builder: (context) => SweetPage(),
                    //   ),
                    // );
                  },
                  // color: Colors.black[300]
                ),
              ),

              const SizedBox(height: 10),
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

              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
