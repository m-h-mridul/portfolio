// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/media_query.dart';
import 'package:portfolio/models/skill.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/utils/screen_helper.dart';

List<Skill> skills = [
  Skill(
    skill: "Application Development Skills",
    details:
        '''Language:- C, C++, Python, Java, Dart. Framework: Flutter, Android (JAVA)
Backend - Nodejs. Database:- Firebase, MongoDB.''',
  ),
  Skill(
    skill: "Dev Ops Skills",
    details:
        '''Operating Systems: Linux (Ubuntu, CentOS), Windows Scripting Languages: Bash, Python
Source Code Management: Git, GitHub
Web Servers: Nginx, Apache
Containerisation and Orchestration: Docker, Kubernetes (CI/CD) tools: Jenkins, Travis CI
Databases: MySQL, PostgreSQL
Configuration Management: Ansible
Cloud Platforms: AWS, Google Cloud
Infrastructure as Code (IaC): Terraform, CloudFormation 
Monitoring and Logging: Prometheus, Grafana, ELK Stack Version 
Control: Git.
Collaboration Tools: Slack, Jira, Confluence''',
  ),
  Skill(
    skill: "Problem-solving",
    details:
        '''Algorithm and Data Structure, Competitive programmer.\nUsing Phython''',
  ),
];

class SkillSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuerypage.safeBlockHorizontal! * 2,
        vertical: MediaQuerypage.safeBlockVertical! * 2,
      ),
      child: ScreenHelper(
        desktop: _buildUi(kDesktopMaxWidth),
        tablet: _buildUi(kTabletMaxWidth),
        mobile: _buildUi(getMobileMaxWidth(context)),
      ),
    );
  }

  Widget _buildUi(double width) {
    return Center(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Flex(
            direction: ScreenHelper.isMobile(context)
                ? Axis.vertical
                : Axis.horizontal,
            children: [
              Expanded(
                flex: ScreenHelper.isMobile(context) ? 0 : 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "SKILLS",
                      style: GoogleFonts.oswald(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 28.0,
                        height: 1.3,
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Column(
                      children: skills
                          .map(
                            (skill) => Container(
                              margin: const EdgeInsets.only(bottom: 15.0),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: MediaQuerypage.screenWidth! * .22,
                                    child: Text(
                                      skill.skill,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  Expanded(
                                    child: Text(
                                      skill.details,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                          .toList(),
                    )
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
