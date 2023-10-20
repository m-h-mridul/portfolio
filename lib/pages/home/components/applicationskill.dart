// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/screen_helper.dart';
import '../../../media_query.dart';
import '../../../utils/constants.dart';

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
      child: Text(
        '''Dedicated and motivated DevOps Engineer with a strong foundation in IT and a passion for automation and cloud technologies. Seeking an opportunity to contribute to a dynamic DevOps team and further develop skills in CI/CD, infrastructure as code (IaC), and cloud services. Also developing cross-platform(Flutter) mobile applications. Strong understanding of mobile app development concepts, UI/UX design principles, and software development life cycle. Committed to delivering high-quality code and user-friendly mobile applications. Excellent problem-solving skills and ability to work effectively in a collaborative team environment.''',
        style: GoogleFonts.oswald(
          color: Colors.white,
          fontSize: 16.0,
        ),
      ),
    );
  }
}
