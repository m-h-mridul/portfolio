// ignore_for_file: use_key_in_widget_constructors, avoid_web_libraries_in_flutter, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/models/header_item.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/utils/globals.dart';
import 'package:portfolio/utils/screen_helper.dart';
import 'dart:js' as js;

List<HeaderItem> headerItems = [
  HeaderItem(
      title: "Facebook",
      onTap: () {
        const String url =
            'https://www.facebook.com/profile.php?id=100003522036510&mibextid=ZbWKwL';
        js.context.callMethod('open', [url]);
      }),
  HeaderItem(
      title: "Github",
      onTap: () {
        const String url = 'https://github.com/m-h-mridul';
        js.context.callMethod('open', [url]);
      }),
  HeaderItem(
      title: "Link-in",
      onTap: () {
        const String url = 'https://www.linkedin.com/in/mhamudul-hasan-mridul';
        js.context.callMethod('open', [url]);
      }),
  HeaderItem(
    title: "BLOGS",
    onTap: () {
      const String url = 'https://medium.com/@mhmridul2400';
      js.context.callMethod('open', [url]);
    },
    
  ),
  HeaderItem(
    title: "HIRE ME",
    onTap: () {
      const String url = 'https://medium.com/@mhmridul2400';
      js.context.callMethod('open', [url]);
    },
    isButton: true,
  ),
];

class HeaderLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "Mridul",
              style: GoogleFonts.oswald(
                color: Colors.white,
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: ".",
              style: GoogleFonts.oswald(
                color: kPrimaryColor,
                fontSize: 36.0,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HeaderRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: headerItems
          .map(
            (item) => item.isButton
                ? MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Container(
                      decoration: BoxDecoration(
                        color: kDangerColor,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 5.0),
                      child: TextButton(
                        onPressed: item.onTap,
                        child: Text(
                          item.title,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 13.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  )
                : MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Container(
                      margin: const EdgeInsets.only(right: 30.0),
                      child: GestureDetector(
                        onTap: item.onTap,
                        child: Text(
                          item.title,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 13.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
          )
          .toList(),
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenHelper(
      desktop: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: buildHeader(),
      ),
      mobile: buildMobileHeader(),
      tablet: buildHeader(),
    );
  }

  // mobile header
  Widget buildMobileHeader() {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HeaderLogo(),
            GestureDetector(
              onTap: () {
                Globals.scaffoldKey.currentState!.openEndDrawer();
              },
              child: const Icon(
                Icons.list,
                color: Colors.white,
                size: 28.0,
              ),
            )
          ],
        ),
      ),
    );
  }

  // Lets plan for mobile and smaller width screens
  Widget buildHeader() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeaderLogo(),
          HeaderRow(),
        ],
      ),
    );
  }
}
