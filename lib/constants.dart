import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// Colors
Color kPrimaryColor = Color(0xffC0392B);

// Social Media
const kSocialIcons = [
  "https://img.icons8.com/metro/208/ffffff/facebook-new--v2.png",
  "https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
  "https://img.icons8.com/android/480/ffffff/twitter.png",
  "https://img.icons8.com/metro/308/ffffff/linkedin.png",
  "https://img.icons8.com/material-rounded/384/ffffff/github.png",
  "https://img.icons8.com/ios-filled/500/ffffff/medium-monogram--v1.png"
];

const kSocialLinks = [
  "https://facebook.com/mhamzadev",
  "https://instagram.com/mhamzadev",
  "https://twitter.com/mhamzadev",
  "https://linkedin.com/in/mhamzadev",
  "https://github.com/m-hamzashakeel",
  "https://mhamzadev.medium.com"
];

// URL Launcher
void launchURL(String _url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

// Community
final kCommunityLogo = [
  'assets/cui.png',
  'assets/flutterIsl.png',
  'assets/dsc.png'
];

final kCommunityLinks = [
  "https://www.comsats.edu.pk/",
  "https://web.facebook.com/FlutterIslamabadPakistan/",
  "https://dsc.community.dev/comsats-university-islamabad/"
];

// Tools & Tech
final kTools = ["Flutter", "Dart", "Python", "Java", "C++"];

final kTools1 = ["HTML", "CSS", "Bootstrap", "React-native"];

// services
final kServicesIcons = [
  "assets/services/app.png",
  "assets/services/ui.png",
  "assets/services/rapid.png",
  "assets/services/blog.png",
  "assets/services/open.png",
];

final kServicesTitles = [
  "Full App Development",
  "UI/UX Designing",
  "Rapid Prototyping",
  "Technical Blog Writing",
  "Open Source - GitHub",
];

final kServicesDescriptions = [
  "For now, I can only develop Android Apps using Flutter, that's because I don't own a MacBook right now so can't test or debug apps for iOS. Hopefully this missing piece will be filled soon :)",
  "Although I'm mainly a flutter developer but I do care about the UI/UX for my client. Hence, I also do UI designing for applications. So, feel free to ask me for getting you UI/UX for your apps",
  "Having a startup idea? Or maybe just want a prototype for your clients? With Flutter I can get you basic version of your app in no time and you are good to go for your project in future.",
  "I have been writing technical blogs on Medium for over a year now. So, I can get you technical blogs with awesome header images, interesting topics and SEO friendly.\nCheck out my Medium profile @mhamzadev",
  "Working as open source contributor on GitHub with 200+ stars and numerous forks on various projects liked and shared by other developers.\nCheck out my GitHub Profile @m-hamzashakeel",
];

final kServicesLinks = [
  "https://www.fiverr.com/hamza6shakeel",
  "https://www.fiverr.com/hamza6shakeel",
  "https://www.fiverr.com/hamza6shakeel",
  "https://mhamzadev.medium.com",
  "https://github.com/m-hamzashakeel"
];

// projects
final kProjectsIcons = [
  "assets/projects/medkit.png",
  "assets/projects/hereiam.png",
  "assets/projects/quran.png",
  "assets/projects/covid.png",
  "assets/projects/messenger.png",
  "assets/projects/flutter.png",
  "assets/projects/earbender.png",
  "assets/projects/java.png",
  "assets/projects/android.png",
  "assets/services/open.png",
];

final kProjectsTitles = [
  "MedKit",
  "Here I Am",
  "The Holy Qur'an",
  "COVID-19",
  "Messenger Chat Head UI",
  "flutter.dev - Flutter Web",
  "Earbender",
  "File Transfer Protocol",
  "My Order",
  "Hidev",
];

final kProjectsDescriptions = [
  "Pharmacy App - Flutter",
  "Women saftey App - Flutter",
  "Qur'an App - Flutter",
  "Tracker App - Flutter",
  "UI Messenger Chat Head - Flutter",
  "flutter.dev UI Clone - Flutter Web",
  "Music App - Flutter",
  "GUI based FTP - Java",
  "Restaurant Ordering App - Android (Java)",
  "Personal Blog Concept"
];

final kProjectsLinks = [
  "https://github.com/m-hamzashakeel/MedKit-Pharmacy-App-Using-Flutter",
  "https://github.com/m-hamzashakeel/Here-I-Am-Alert-App",
  "https://github.com/m-hamzashakeel/The_Holy_Quran_App",
  "https://github.com/m-hamzashakeel/Covid19-Tracker-App",
  "https://github.com/m-hamzashakeel/Messenger-Chat-Head-Flutter-UI",
  "https://github.com/m-hamzashakeel/flutter.dev-Flutter-Web-Clone",
  "https://github.com/m-hamzashakeel/Earbender_Music_App",
  "https://github.com/m-hamzashakeel/FTP_GUI_Java",
  "https://github.com/m-hamzashakeel/My-Order-Resturant-Ordering-System",
  "https://github.com/m-hamzashakeel/Hidev_Web",
];

// Contact
final kContactIcons = [
  Icons.home,
  Icons.phone,
  Icons.mail,
];

final kContactTitles = [
  "Location",
  "Phone",
  "Email",
];

final kContactDetails = [
  "Attock, Pakistan",
  "(+92) 346 0159889",
  "hamza.6.shakeel@gmail.com"
];
