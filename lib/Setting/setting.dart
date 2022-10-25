// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:line_awesome_flutter/line_awesome_flutter.dart';
// import 'package:project_pas/Setting/constant.dart';
// import 'package:project_pas/Setting/profile.dart';

// class profilescreen extends StatelessWidget {
//   const profilescreen({Key? key}) : super(key: key);

//   @override
//   StatelessWidget createState() => _profilescreenState();

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class _profilescreenState extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var profileInfo = Expanded(
//       child: Column(
//         children: <Widget>[
//           Container(
//             height: kSpacingUnit.w * 10,
//             width: kSpacingUnit.w * 10,
//             margin: EdgeInsets.only(top: kSpacingUnit.w * 3),
//             child: Stack(
//               children: <Widget>[
//                 CircleAvatar(
//                   radius: kSpacingUnit.w * 5,
//                   backgroundImage: AssetImage('assets/images/avatar.png'),
//                 ),
//                 Align(
//                   alignment: Alignment.bottomRight,
//                   child: Container(
//                     height: kSpacingUnit.w * 2.5,
//                     width: kSpacingUnit.w * 2.5,
//                     decoration: BoxDecoration(
//                       color: Theme.of(context).accentColor,
//                       shape: BoxShape.circle,
//                     ),
//                     child: Center(
//                       heightFactor: kSpacingUnit.w * 1.5,
//                       widthFactor: kSpacingUnit.w * 1.5,
//                       child: Icon(
//                         LineAwesomeIcons.pen,
//                         color: kDarkPrimaryColor,
//                         size: ScreenUtil().setSp(kSpacingUnit.w * 1.5),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: kSpacingUnit.w * 2),
//           Text(
//             'Nicolas Adams',
//             style: kTitleTextStyle,
//           ),
//           SizedBox(height: kSpacingUnit.w * 0.5),
//           Text(
//             'nicolasadams@gmail.com',
//             style: kCaptionTextStyle,
//           ),
//           SizedBox(height: kSpacingUnit.w * 2),
//           Container(
//             height: kSpacingUnit.w * 4,
//             width: kSpacingUnit.w * 20,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(kSpacingUnit.w * 3),
//               color: Theme.of(context).accentColor,
//             ),
//             child: Center(
//               child: Text(
//                 'Upgrade to PRO',
//                 style: kButtonTextStyle,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );

//     var header = Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         SizedBox(width: kSpacingUnit.w * 3),
//         Icon(
//           LineAwesomeIcons.arrow_left,
//           size: ScreenUtil().setSp(kSpacingUnit.w * 3),
//         ),
//         profileInfo,
//         SizedBox(width: kSpacingUnit.w * 3),
//       ],
//     );
//   }
// }
