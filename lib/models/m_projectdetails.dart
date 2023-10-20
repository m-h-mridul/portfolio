// ignore_for_file: public_member_api_docs, sort_constructors_first
class ProjectDetails {
  String name = "";
  String type = "";
  String details = "";
  String title = "";
  String imagename = "";
  String projectlink = "";
  String tools = "";
  ProjectDetails({
    required this.name,
    required this.type,
    required this.details,
    required this.title,
    required this.imagename,
    required this.projectlink,
    required this.tools,
  });
}

List<ProjectDetails> projectDetails = [
  ProjectDetails(
      name: "Doner Call",
      type: "Flutter App",
      title: "Blood Donation",
      imagename: "assets/p3.png",
      projectlink: "https://github.com/m-h-mridul/Donor-Call",
      tools:
          'Provider, GetX for state management, backend and notification using Firebase. Shared Preference for local storage. Map using for live location.',
      details:
          'Donors/Users can create an account, and find a notification when they are ready to donate blood. User-only sees those donors who are available to present. The user also gets a notification if he/she is prepared to contribute.'),
  ProjectDetails(
      name: "Potro",
      type: "Flutter App",
      title: "Chat app",
      imagename: "assets/appstore.png",
      projectlink: "https://github.com/m-h-mridul/chatapp",
      tools:
          'GetX for state management.Firebase (login & registration), and database. Local storage used Shared Preference.',
      details:
          'Real-time messaging (text, image, pdf, short video).Account created by Google ID, google account & password and also Facebook.')
];
