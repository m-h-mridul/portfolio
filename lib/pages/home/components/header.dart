// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/models/header_item.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/utils/globals.dart';
import 'package:portfolio/utils/screen_helper.dart';

List<HeaderItem> headerItems = [
  HeaderItem(
    title: "HOME",
    onTap: () {},
  ),
  HeaderItem(title: "MY INTRO", onTap: () {}),
  HeaderItem(title: "SERVICES", onTap: () {}),
  HeaderItem(title: "PORTFOLIO", onTap: () {}),
  HeaderItem(title: "TESTIMONIALS", onTap: () {}),
  HeaderItem(title: "BLOGS", onTap: () {}),
  HeaderItem(
    title: "HIRE ME",
    onTap: () {},
    isButton: true,
  ),
];

class HeaderLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {},
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
            // Restart server to make icons work
            // Lets make a scaffold key and create a drawer
            GestureDetector(
              onTap: () {
                // Lets open drawer using global key
                Globals.scaffoldKey.currentState!.openEndDrawer();
              },
              child: const Icon(
                Icons.abc_outlined,
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
