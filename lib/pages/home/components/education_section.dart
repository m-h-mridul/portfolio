import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/media_query.dart';
import 'package:portfolio/models/education.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/utils/screen_helper.dart';

final List<Education> educationList = [
  Education(
    description:
        "National University (Dhaka City College) with CGPA: 3.35 (out of 4)",
    linkName: "B.SC (Hons.) in CSE",
    period: "2017 - 2023",
  ),
  Education(
    description: "Brahmanbaria Govt College with GPA 4.50 (out of 5)",
    linkName: "High Secondary Certificate",
    period: "2015 - 2017",
  ),
  Education(
    description: "Annoda Govt High School with GPA 4.75 (out of 5)",
    linkName: "Secondary School  Certificate ",
    period: "2013 - 2015",
  ),
];

class EducationSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuerypage.safeBlockHorizontal! * 2),
      child: ScreenHelper(
        desktop: _buildUi(kDesktopMaxWidth),
        tablet: _buildUi(kTabletMaxWidth),
        mobile: _buildUi(getMobileMaxWidth(context)),
      ),
    );
  }

  Widget _buildUi(double width) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "EDUCATION",
            style: GoogleFonts.oswald(
              color: Colors.white,
              fontWeight: FontWeight.w900,
              fontSize: 30.0,
              height: 1.3,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              return Wrap(
                spacing: 20.0,
                runSpacing: 20.0,
                children: educationList
                    .map(
                      (education) => SizedBox(
                        width: constraints.maxWidth / 2.0 - 20.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              education.period,
                              style: GoogleFonts.oswald(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 20.0,
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              education.description,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Colors.white,
                                height: 1.2,
                                fontSize: 16.0,
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: Text(
                                education.linkName,
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              );
            },
          )
        ],
      ),
    );
  }
}
