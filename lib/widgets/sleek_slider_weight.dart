
import 'package:flutter/material.dart';
import 'package:flutter_watermelon/resource/watermelon_colors.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';


class SleekSliderWeight extends StatelessWidget {

  final bool counterClockwise;
  final double min;
  final double max;
  final double initialValue;
  final String text;



  const SleekSliderWeight({Key? key,
    required this.counterClockwise,
    required this.min,
    required this.max,
    required this.initialValue,
    required this.text

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SleekCircularSlider(
      appearance: CircularSliderAppearance(
        size: 175, startAngle: 90, angleRange: 180,
        counterClockwise: counterClockwise,
        // внешний вид ползунка - size:значение-ширины и высоты/ startAngle: угол-начало/ angleRange: угол end
        // counterClockwise: по часовой стр- по умолч false /
        customWidths: CustomSliderWidths(
            trackWidth: 15,
            progressBarWidth: 25,
            handlerSize: 18,
            shadowWidth: 5),
        // CustomSliderWidths(trackWidth: ширина дорожки, progressBarWidth: ширина прогресса,handlerSize:размер ползунка,shadowWidth:тень прогресса
        customColors: CustomSliderColors(
          trackColor: WatermelonColors.sleekPink,
          // progressBarColors: [WatermelonColors.lightpink, WatermelonColors.lightpink2, WatermelonColors.red4],
          //   gradientStartAngle: 50, gradientEndAngle: 50,
          progressBarColor: WatermelonColors.sleekProgressRed,
          shadowColor: WatermelonColors.sleekShadowPink,
          dynamicGradient: true,
          dotColor: WatermelonColors.dotColor,
          shadowStep: 8,
        ),
        infoProperties: InfoProperties(
            bottomLabelText: text.toUpperCase(),
            // topLabelText: 'weight'.toUpperCase(),
            topLabelStyle: const TextStyle(
              color: WatermelonColors.sleekPink,
              fontSize: 12,
              letterSpacing: 4,
            ),
            bottomLabelStyle: const TextStyle(
              color: WatermelonColors.sleekPink,
              fontSize: 12,
              letterSpacing: 4,
            ),
            mainLabelStyle: const TextStyle(
                color: WatermelonColors.sleekPink, fontSize: 22),
            modifier: (double value) {
              // заменить проценты на кг
              final roundedValue =
              value.ceil().toInt().toString();
              return '$roundedValue ';
            }),
      ),
      min: min,
      max: max,
      initialValue: initialValue, // начальное значение
      onChange: (double value) {
        // обратный вызов, предоставляющий значение при его изменении (с помощью жеста панорамирования)
      },
      onChangeStart: (double startValue) {
        // обратный вызов, предоставляющий начальное значение (при запуске жеста панорамирования)
      },
      onChangeEnd: (double endValue) {
        // ucallback, предоставляющий конечное значение (когда заканчивается жест панорамирования)
      },
      // innerWidget: (double value) {
      //   // используйте свой пользовательский виджет внутри слайдера (получает значение слайдера при обратном вызове)
      //   return
      // }
    );
  }
}
