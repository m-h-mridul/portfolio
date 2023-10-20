// ignore_for_file: prefer_const_constructors, avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/media_query.dart';
import 'package:portfolio/models/carousel_item_model.dart';
import 'package:portfolio/utils/constants.dart';
import 'dart:js' as js;

List<CarouselItemModel> carouselItems = List.generate(
  5,
  (index) => CarouselItemModel(
    text: Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuerypage.safeBlockHorizontal! * 5,
          vertical: MediaQuerypage.safeBlockVertical! * 3),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Software Engineer",
            style: GoogleFonts.oswald(
              color: kPrimaryColor,
              fontWeight: FontWeight.w900,
              fontSize: 16.0,
            ),
          ),
          SizedBox(
            height: MediaQuerypage.smallSizeHeight! * 4,
          ),
          Text(
            "Mamudul Hasan Mridul",
            style: GoogleFonts.oswald(
              color: Colors.white,
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
              height: 1.3,
            ),
          ),
          SizedBox(
            height: MediaQuerypage.smallSizeHeight! * 1.3,
          ),
          const Text(
            "Flutter Devoloper and Dev Ops Engineering",
            style: TextStyle(
              color: kCaptionColor,
              fontSize: 15.0,
              height: 1.0,
            ),
          ),
          SizedBox(
            height: MediaQuerypage.smallSizeHeight! * 1.8,
          ),
          Text(
            "BETTER DESIGN,   BETTER EXPERIENCES",
            style: GoogleFonts.oswald(
              color: Colors.white,
              fontWeight: FontWeight.w900,
              height: 1.8,
              fontSize: 18.0,
            ),
          ),
          GestureDetector(
            onTap: () {
              const String url =
                  'https://drive.google.com/drive/folders/16tAzHNT3M6TGx_ouJyg6w_1Li79NBFk1?usp=sharing';
              js.context.callMethod('open', [url]);
            },
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Text(
                "DOWNLOAD CV",
                style: GoogleFonts.oswald(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w900,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
          Wrap(
            children: [
              TextButton(
                  onPressed: () {
                    String url = 'https://uhunt.onlinejudge.org/id/936857';
                    js.context.callMethod('open', [url]);
                  },
                  child: Text(
                    'UVA',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  )),
              TextButton(
                  onPressed: () {
                    String url = 'https://www.hackerrank.com/profile/mmridul';
                    js.context.callMethod('open', [url]);
                  },
                  child: Text(
                    'Heaker Rank',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  )),
              TextButton(
                  onPressed: () {
                    String url = 'https://leetcode.com/Mridul1155/';
                    js.context.callMethod('open', [url]);
                  },
                  child: Text(
                    'Leet Code',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  )),
            ],
          ),
        ],
      ),
    ),
    image: Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuerypage.safeBlockHorizontal! * 1,
          vertical: MediaQuerypage.safeBlockVertical! * 1),
      child: Image(
        height: MediaQuerypage.screenHeight! * .4,
        image: const AssetImage(
          "assets/person2.png",
        ),
        fit: BoxFit.contain,
      ),
    ),
  ),
);
