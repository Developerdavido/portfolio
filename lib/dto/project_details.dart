

class ProjectDetails {
  String? name;
  String? description;
  String? titleImage;
  List<String>? images;

  ProjectDetails({this.name, this.titleImage, this.images, this.description});


  static List<ProjectDetails> details = [
    ProjectDetails(
        name: "Agrospectrum App",
        description: '''This is a multi-level application that looks at digitizing the agricultural value chain, from purchasing commodities and services, agricultural farming monitoring, monitoring and facilitating agricultural input and usage, biometric verification e.t.c ''',
      titleImage: "",
      images: [
        'assets/images/015.png',
        'assets/images/016.png',
        'assets/images/017.png',
        'assets/images/018.png',
        'assets/images/019.png',
        'assets/images/020.png',
        'assets/images/021.png',
      ]
    ),
    ProjectDetails(
        name: "NEDCo App",
        description: '''This app is a utility app that helps users in the northern part of Ghana in buying power through their mobile phones, lay complains and make enquiries ''',
        titleImage: "assets/images/android_icon.png",
      images: [
        'assets/images/005.jpeg',
        'assets/images/006.jpeg',
        'assets/images/007.jpeg',
        'assets/images/008.jpeg',
        'assets/images/009.jpeg',
        'assets/images/010.jpeg',
        'assets/images/011.jpeg',
        'assets/images/012.jpeg',
        'assets/images/013.jpeg',
        'assets/images/014.jpeg',
      ]
    ),
    ProjectDetails(
        name: "GC3B App",
        description: '''This app was created to allow users register and join conferences for the cybersecurity conference in 2023,''',
        titleImage: "assets/images/csa_logo.png",
      images: [
        'assets/images/001.jpeg',
        'assets/images/002.jpeg',
        'assets/images/003.jpeg',
        'assets/images/004.jpeg',]
    ),
    ProjectDetails(
        name: "EWC Church App",
        titleImage: "assets/images/ewc_icon.jpg",
        description: '''This app is a multilevel application that will look at taking church data, and provide utilities for church management''',
      images: [ 'assets/images/001.jpeg',
        'assets/images/img-22.jpg',
        'assets/images/img-23.jpg',
        'assets/images/img-24.jpg',
        'assets/images/img-25.jpg',
        'assets/images/img-26.jpg',
        'assets/images/img-27.jpg',
        'assets/images/img-28.jpg',
        'assets/images/img-29.jpg',
        ]
    ),
  ];


}