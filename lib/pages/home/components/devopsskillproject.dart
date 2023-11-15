// ignore_for_file: use_key_in_widget_constructors, avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:portfolio/media_query.dart';
import 'dart:js' as js;
import '../../../models/devopsmedel.dart';
import '../../../utils/constants.dart';
import '../../../utils/screen_helper.dart';

class DevopsSkill extends StatelessWidget {
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
            D_project.length,
            (index) => LayoutBuilder(
              builder: (context, constraints) {
                var item = D_project[index];
                return Projectview(item: item, constraints: constraints);
              },
            ),
          ),
        ),
      ),
    );
  }
}

class Projectview extends StatelessWidget {
  const Projectview({super.key, required this.item, required this.constraints});
  final BoxConstraints constraints;
  final DevopsProject item;

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
                // "assets/devops/i11.png",
                item.Image,
                width: constraints.maxWidth > 720.0
                    ? MediaQuerypage.screenWidth! * .2
                    : MediaQuerypage.screenWidth! * .6,
                height: constraints.maxHeight > 1200
                    ? MediaQuerypage.screenHeight! * .3
                    : MediaQuerypage.screenHeight! * .55,
              ),
            ),
            const SizedBox(
              height: 15,
              width: 15.0,
            ),
            SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: constraints.maxWidth > 720.0
                        ? MediaQuerypage.screenWidth! * .7
                        : MediaQuerypage.screenWidth!,
                    child: Text(
                      "${item.details}\n",
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                        color: Colors.amber,
                        fontSize: 18.0,
                      ),
                    ),
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
                              js.context.callMethod('open', [item.projectLink]);
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
