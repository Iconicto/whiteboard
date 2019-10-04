import 'package:whiteboard/model/news.dart';

News newsItem = News(
  title: "Module: Advanced Client Side",
  time: DateTime.now().subtract(
    Duration(minutes: 55),
  ),
  image: "https://blog.codemagic.io/uploads/2019/02/CM-Flutter-experience.jpg",
  source: Source(name: "MODULE"),
);

News newsItemTwo = News(
  title: "Assignment Due: CSP Coursework",
  time: DateTime.parse("2019-06-30T22:45:52.326000+05:30"),
  image: "https://cdn.iconicto.com/EverythingFlutter/media/News/ef1.png",
  link: "https://appinventiv.com/blog/flutter-1-5-highlights/",
  source: Source(name: "ASSIGNMENT"),
);

News newsItemThree = News(
  title: "Module: Server Side",
  time: DateTime.parse("2019-06-30T22:45:52.326000+05:30"),
  image: "https://cdn.iconicto.com/EverythingFlutter/media/News/ef1.png",
  link: "https://appinventiv.com/blog/flutter-1-5-highlights/",
  source: Source(name: "Appinventiv"),
);
