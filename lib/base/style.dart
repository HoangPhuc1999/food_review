import 'package:flutter/material.dart';
import 'package:foodreview_app/base/color.dart';

final BoxDecoration filmBoxDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(5),
);

final BoxDecoration circularDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(5),
);
final BoxDecoration squareDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(0),
);

final BoxDecoration circularDecorationOption = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    border: Border.all(color: AppColor.black));



// Padding(
//   padding: const EdgeInsets.only(right: 20),
//   child: Container(
//     height: 90,
//     width: double.infinity,
//     decoration: circularDecorationOption.copyWith(
//       color: AppColor.white,
//     ),
//     child: Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           const Text(
//             'Opening Hours',
//             style: TextStyle(
//                 fontSize: 20, fontWeight: FontWeight.bold),
//           ),
//           Container(
//             height: 10,
//           ),
//         ],
//       ),
//     ),
//   ),
// ),