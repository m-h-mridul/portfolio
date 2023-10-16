import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/media_query.dart';
import 'package:portfolio/models/footer_item.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/utils/screen_helper.dart';

final List<FooterItem> footerItems = [
  FooterItem(
    iconPath: "assets/mappin.png",
    title: "ADDRESS",
    text1: "Kaderabad Housing, Mohammodpur",
    text2: "Dhaka-1209",
  ),
  FooterItem(
    iconPath: "assets/phone.png",
    title: "PHONE",
    text1: "+88 01629 055318",
    text2: "+88 01568 208074",
  ),
  FooterItem(
    iconPath: "assets/email.png",
    title: "EMAIL",
    text1: "mhmridul2400@gmail.com",
    text2: "mhmriduljob@gmail.com",
  ),
  FooterItem(
    iconPath: "assets/whatsapp.png",
    title: "WHATSAPP",
    text1: "+88 01629 055318",
    text2: "",
  )
];

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenHelper(
      desktop: _buildUi(kDesktopMaxWidth, context),
      tablet: _buildUi(kTabletMaxWidth, context),
      mobile: _buildUi(getMobileMaxWidth(context), context),
    );
  }
}

Widget _buildUi(double width, BuildContext context) {
  return Center(
    child: LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuerypage.safeBlockHorizontal! * 2,
                  vertical: 30.0),
              child: Wrap(
                children: footerItems
                    .map(
                      (footerItem) => SizedBox(
                        height: 120.0,
                        width: ScreenHelper.isMobile(context)
                            ? constraints.maxWidth / 2.0 - 20.0
                            : constraints.maxWidth / 4.0 - 20.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  footerItem.iconPath,
                                  width: 25.0,
                                ),
                                const SizedBox(
                                  width: 15.0,
                                ),
                                Text(
                                  footerItem.title,
                                  style: GoogleFonts.oswald(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            RichText(
                              textAlign: TextAlign.start,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "${footerItem.text1}\n",
                                    style: TextStyle(
                                      color: kCaptionColor,
                                      height: 1.8,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "${footerItem.text2}\n",
                                    style: TextStyle(
                                      color: kCaptionColor,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        );
      },
    ),
  );
}
