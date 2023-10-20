// // ignore_for_file: avoid_web_libraries_in_flutter, unused_import, prefer_const_constructors, no_leading_underscores_for_local_identifiers, use_key_in_widget_constructors

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:portfolio/media_query.dart';
// import 'package:responsive_framework/responsive_framework.dart';
// import 'package:portfolio/models/design_process.dart';
// import 'package:portfolio/utils/constants.dart';
// import 'package:portfolio/utils/screen_helper.dart';
// import 'dart:js' as js;

// final List<DesignProcess> designProcesses = [
//   DesignProcess(
//     title: "Intership",
//     imagePath: "assets/design.png",
//     subtitle:
//         "A full stack allround designer thay may or may not include a guide for specific creative",
//   ),
//   DesignProcess(
//     title: "DEVELOP",
//     imagePath: "assets/develop.png",
//     subtitle:
//         "A full stack allround developer thay may or may not include a guide for specific creative",
//   ),
//   DesignProcess(
//     title: "WRITE",
//     imagePath: "assets/write.png",
//     subtitle:
//         "A full stack allround writer thay may or may not include a guide for specific creative",
//   ),
//   DesignProcess(
//     title: "PROMOTE",
//     imagePath: "assets/promote.png",
//     subtitle:
//         "A full stack allround promoter thay may or may not include a guide for specific creative",
//   ),
// ];

// class Workflow extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: double.infinity,
//       child: ScreenHelper(
//         desktop: _buildUi(context, kDesktopMaxWidth),
//         tablet: _buildUi(context, kTabletMaxWidth),
//         mobile: _buildUi(context, getMobileMaxWidth(context)),
//       ),
//     );
//   }
// }

// Widget _buildUi(BuildContext context, double width) {
//   return 
// }
// //   Widget _buildUi(BuildContext context, double width) {
// //     return Padding(
// //         padding: EdgeInsets.symmetric(
// //             horizontal: MediaQuerypage.safeBlockHorizontal! * 6,
// //             vertical: MediaQuerypage.safeBlockVertical! * 1),
// //         child: LayoutBuilder(
// //           builder: (_context, constraints) {
// //             return ResponsiveGridView.builder(
// //               shrinkWrap: true,
// //               physics: const NeverScrollableScrollPhysics(),
// //               alignment: Alignment.topCenter,
// //               gridDelegate: ResponsiveGridDelegate(
// //                 mainAxisSpacing: 20.0,
// //                 crossAxisSpacing: 20.0,
// //                 maxCrossAxisExtent: ScreenHelper.isTablet(context) ||
// //                         ScreenHelper.isMobile(context)
// //                     ? constraints.maxWidth / 2.0
// //                     : 200.0,
// //                 childAspectRatio: ScreenHelper.isDesktop(context)
// //                     ? 1
// //                     : MediaQuery.of(context).size.aspectRatio * 1.5,
// //               ),
// //               itemBuilder: (BuildContext context, int index) {
// //                 return Column(
// //                   crossAxisAlignment: CrossAxisAlignment.start,
// //                   children: [
// //                     Row(
// //                       mainAxisAlignment: MainAxisAlignment.start,
// //                       children: [
// //                         Image.asset(
// //                           designProcesses[index].imagePath,
// //                           width: 40.0,
// //                         ),
// //                         SizedBox(
// //                           width: 15.0,
// //                         ),
// //                         Text(
// //                           designProcesses[index].title,
// //                           style: GoogleFonts.oswald(
// //                             fontSize: 20.0,
// //                             fontWeight: FontWeight.w700,
// //                             color: Colors.white,
// //                           ),
// //                         )
// //                       ],
// //                     ),
// //                     SizedBox(
// //                       height: 15.0,
// //                     ),
// //                     Text(
// //                       designProcesses[index].subtitle,
// //                       style: TextStyle(
// //                         color: kCaptionColor,
// //                         height: 1.5,
// //                         fontSize: 14.0,
// //                       ),
// //                     )
// //                   ],
// //                 );
// //               },
// //               itemCount: designProcesses.length,
// //             );
// //           },
// //         ));
// //   }
// // }
