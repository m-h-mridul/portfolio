// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_web_libraries_in_flutter, camel_case_types, unused_import

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/media_query.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/utils/screen_helper.dart';
import 'dart:js' as js;
import '../../../models/m_projectdetails.dart';

class ApplicationSkill extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenHelper(
      desktop: _buildUi(kDesktopMaxWidth),
      tablet: _buildUi(kTabletMaxWidth),
      mobile: _buildUi(getMobileMaxWidth(context)),
    );
  }

  Widget _buildUi(double width) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: MediaQuerypage.safeBlockVertical! * 1.5,
          horizontal: MediaQuerypage.safeBlockHorizontal! * 2),
      child: Center(
        child: Wrap(
          direction: Axis.horizontal,
          spacing: 8.0,
          runSpacing: 8.0,
          children: List.generate(
            projectDetails.length,
            (index) => Card(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  var item = projectDetails[index];
                  return projectview(item: item, constraints: constraints);
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class projectview extends StatelessWidget {
  const projectview({super.key, required this.item, required this.constraints});
  final BoxConstraints constraints;
  final ProjectDetails item;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Flex(
          direction:
              constraints.maxWidth > 720 ? Axis.horizontal : Axis.vertical,
          children: [
            Container(
              color: Colors.white10,
              child: Image.asset(
                item.imagename,
                width: constraints.maxWidth > 720.0
                    ? MediaQuerypage.screenWidth! * .2
                    : MediaQuerypage.screenWidth! * .6,
                height: constraints.maxHeight>1200?
                MediaQuerypage.screenHeight! * .3:
                MediaQuerypage.screenHeight! * .55,
              ),
            ),
            const SizedBox(
              height: 15,
              width: 15.0,
            ),
            SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.type,
                    style: GoogleFonts.oswald(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w900,
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    "${item.name}\n${item.title}",
                    style: GoogleFonts.oswald(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      height: 1.3,
                      fontSize: 35.0,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                    width: constraints.maxWidth > 720.0
                        ? MediaQuerypage.screenWidth! * .7
                        : MediaQuerypage.screenWidth!,
                    child: Text(
                      "${item.details}\n\n${item.tools}",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  Row(
                    children: [
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Container(
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          height: 48.0,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 28.0,
                          ),
                          child: TextButton(
                            onPressed: () {
                              js.context.callMethod('open', [item.projectlink]);
                            },
                            child: const Center(
                              child: Text(
                                "EXPLORE MORE",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
