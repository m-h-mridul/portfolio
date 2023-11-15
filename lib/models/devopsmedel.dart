// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names
class DevopsProject {
  DevopsProject({
    required this.Image,
    required this.ProjectName,
    required this.details,
    required this.metadata,
    required this.projectLink,
  });
  String projectLink = "";
  String Image = "";
  String ProjectName = "";
  String details = "";
  Map<String, dynamic> metadata = <String, dynamic>{};
}

List<DevopsProject> D_project = [
  DevopsProject(
      Image: "assets/devops/i11.png",
      ProjectName: "website-ci-cd-jekins-Apacheserver",
      details:
          'In this web application, I try ci/cd pipelines with Apache web server,github webhook, and Amazon web Cloud (VPC, Ec2). For excess, this application only opens those port that are required. Here the application is only a frontend application.',
      metadata: {},
      projectLink:
          'https://github.com/m-h-mridul/website-ci-cd-jekins-Apacheserver'),
];
