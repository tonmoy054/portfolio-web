import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// Colors
Color kPrimaryColor = Color(0xffC0392B);

// Social Media
const kSocialIcons = [
  "https://img.icons8.com/metro/208/ffffff/facebook-new--v2.png",
  "https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
  "https://img.icons8.com/metro/308/ffffff/linkedin.png",
  "https://img.icons8.com/material-rounded/384/ffffff/github.png",

];

const kSocialLinks = [
  "https://www.facebook.com/MahamudulHassanTonmoy",
  "https://www.instagram.com/m.hassan_tonmoy",
  "https://www.linkedin.com/in/mahamudul-hassan-tonmoy",
  "https://github.com/tonmoy054",
];

// URL Launcher
void launchURL(String _url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

// Community
final kCommunityLogo = [
  'assets/cure.png',
  'assets/kloudoop.png',

];

final kCommunityLinks = [
  "https://cureapp.co/",
  "https://www.kloudoop.com/",

];

// Tools & Tech
final kTools = ["Best Idea Innovation Award, Japan", "SVC Winner at Harvard University, USA", "Resolution Fellow", "Top 20 Best Project, Malaysia", "2nd Runner Up at Unleash Hacks"];

// final kTools1 = ["", "CSS", "Bootstrap", "React-native"];

// services
final kServicesIcons = [
  "assets/services/s1.png",
  "assets/services/s2.png",
  "assets/services/s3.png",
  "assets/services/s4.png",
  "assets/services/s5.png",
];

final kServicesTitles = [
  "App Development",
  "Web Development",
  "UI/UX Enthusiast",
  "Entrepreneurship",
  "Social Impact",
];

final kServicesDescriptions = [
  "I am focused on Cross-Platform App Development, and flutter is my choice. I love to bring my imagination to live",
  "As a Flutter developer I have experience in Web development as well. Which helps me to create a hybrid ecosystem",
  "Although I'm a developer but I do care about the UI/UX. I am UI/UX enthusiast and I believe smooth design can enhance the experience",
  "I have been working as entrepreneur since 2018. I believe through this growing trend of startup. in the near future we will have some of our own impacting globally",
  "I am more concerned about how we can make positive social impact with technology, I have worked with three international organisation who work for the social impact",
];

final kServicesLinks = [
  // "https://www.fiverr.com/hamza6shakeel/be-your-mobile-app-developer-via-flutter",
  // "https://www.fiverr.com/hamza6shakeel/get-you-modern-ui-design-using-adobe-xd",
  // "https://www.fiverr.com/hamza6shakeel/be-your-mobile-app-developer-via-flutter",
  // "https://mhamzadev.medium.com",
  // "https://github.com/m-hamzashakeel"
];

// projects
final kProjectsBanner = [
  "assets/projects/kkus.jpg",
  "assets/projects/channeli.png",
  "assets/projects/ds.jpg",
  "assets/projects/pa.jpeg",

];

final kProjectsIcons = [
  "assets/projects/kk.png",
  "assets/projects/channelilogo.png",
  "assets/projects/dslogo.png",
  "assets/projects/palogo.png",



];

final kProjectsTitles = [
  "Kaler Kantho",
  "Channel I",
  "The Daily Star",
  "Prothom Alo",


];

final kProjectsDescriptions = [
  "হার্ভার্ডে বিশ্বচ্যাম্পিয়ন বাংলাদেশের তিন তরুণ",
  " Amader Shontanera | Ep-16",
  "CURE impresses at Harvard National Model United Nations 2019",
  "চ্যাম্পিয়ন বাংলাদেশের ‘গিকি হেড’",



];

final kProjectsLinks = [
  "https://www.kalerkantho.com/print-edition/last-page/2020/03/03/881223?fbclid=IwAR3CDoPcOWutlmUGJzECssrp9r7YUnkh69yjiv9BZDyRQ9h1OIOrMFnR_14",
  "https://www.youtube.com/watch?v=odw-uQ3cnX0",
  "https://www.thedailystar.net/star-youth/news/cure-impresses-harvard-national-model-united-nations-2019-1742464",
  "https://www.prothomalo.com/life/%E0%A6%9A%E0%A7%8D%E0%A6%AF%E0%A6%BE%E0%A6%AE%E0%A7%8D%E0%A6%AA%E0%A6%BF%E0%A7%9F%E0%A6%A8-%E0%A6%AC%E0%A6%BE%E0%A6%82%E0%A6%B2%E0%A6%BE%E0%A6%A6%E0%A7%87%E0%A6%B6%E0%A7%87%E0%A6%B0-%E2%80%98%E0%A6%97%E0%A6%BF%E0%A6%95%E0%A6%BF-%E0%A6%B9%E0%A7%87%E0%A6%A1%E2%80%99#bypass-sw",
];

// Contact
final kContactIcons = [
  "assets/c1.png",
  "assets/c2.png",
  "assets/c3.png",
];

final kContactTitles = [
  "Location",
  "Phone",
  "Email",
];

final kContactDetails = [
  "Dhaka, Bangladesh",
  "(+880) 1303 142 432",
  "tonmoy.hasan@icloud.com"
];
