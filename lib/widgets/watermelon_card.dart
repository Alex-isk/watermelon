//
//
//
// import 'package:flutter/material.dart';
// import 'package:flutter_watermelon/pages/info_page.dart';
// import 'package:flutter_watermelon/pages/watermelonpedia_page.dart';
// import 'package:flutter_watermelon/resource/watermelon_colors.dart';
//
// class WatermelonCard extends StatelessWidget {
//   final WatermelonInfo watermelonInfo;   // рефакторим - используем аналогичные данные из типа - WatermelonInfo
//   final VoidCallback onTap;
//
//   const WatermelonCard({
//     Key? key,
//     required this.watermelonInfo,
//     required this.onTap,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         height: 70,
//         clipBehavior: Clip.antiAlias, // сглаживание углов
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(8), // не сглаживает углы у картинок
//           color: Colors.white24      // WatermelonColors....,
//         ),
//         child: Row(
//           // mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.network(
//               watermelonInfo.image,
//               fit: BoxFit.cover,
//               width: 70,
//               height: 70,
//             ),
//             const SizedBox(width: 12),
//             Expanded(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     watermelonInfo.name.toUpperCase(),
//                     style: TextStyle(
//                         fontWeight: FontWeight.w700,
//                         fontSize: 16,
//                         color: WatermelonColors.blackText),
//                   ),
//                   Text(
//                     watermelonInfo.text,
//                     style: TextStyle(
//                         fontWeight: FontWeight.w400,
//                         fontSize: 14,
//                         color: WatermelonColors.blackText),
//                   ),
//                 ],
//               ),
//             )
//           ],
//           // children[
//           //
//           // ]
//         ),
//       ),
//     );
//   }
// }
