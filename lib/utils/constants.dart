import 'package:flutter/material.dart';

const Color kPrimaryColor = Color(0xFFFFD800);
const Color kBackgroundColor = Color.fromRGBO(7, 17, 26, 1);
const Color kDangerColor = Color.fromARGB(255, 243, 22, 22);
const Color kCaptionColor = Color.fromRGBO(166, 177, 187, 1);

// Lets replace all static sizes
const double kDesktopMaxWidth = 1000.0;
const double kTabletMaxWidth = 760.0;
double getMobileMaxWidth(BuildContext context) =>
    MediaQuery.of(context).size.width * .8;

class AppConstants {
  static const linkedInUrl =
      "https://www.linkedin.com/in/jonathan-rebou%C3%A7as/";
  static const githubUrl = "https://github.com/bessajonathan";
  static const whatsapp = "https://wa.me/+5506198301377";
  static const emailUrl = "mailto:jonathan.reboucas94@gmail.com";

  static const _assets = "assets/";
  static const _outputs = "outputs/";

  static const me = _images + "me.jpeg";

  static const _images = _assets + "images/";

  static const _socialImages = _images + "social/";
  static const emailImage = _socialImages + "email.png";
  static const linkedInImage = _socialImages + "linkedin-logo.png";
  static const instaImage = _socialImages + "instagram.png";
  static const githubImage = _socialImages + "github.png";

  static const _techImages = _images + "technology/";
  static const flutterImage = _techImages + "flutter.png";
  static const netCoreImage = _techImages + "netCore.png";
  static const angular = _techImages + "angular.png";
  static const dart = _techImages + "dart.png";
  static const firebaseImage = _techImages + "firebase.png";
  static const postgre = _techImages + "postgre.png";
  static const ionic = _techImages + "ionic.jpg";
  static const cSharp = _techImages + "c#.png";
  static const aws = _techImages + "aws.png";
  static const javascriptImage = _techImages + "javascript.png";
  static const heroku = _techImages + "heroku.png";
  static const mongo = _techImages + "mongo.png";
  static const git = _techImages + "git.png";
  static const node = _techImages + "node.png";

  static const _companyImages = _images + "companies/";
  static const toro = _companyImages + "toro.jpg";
  static const qualifiquei = _companyImages + "qualifiquei.png";
  static const celcoin = _companyImages + "celcoin.png";
  static const restfy = _companyImages + "restfy.png";
  static const serel = _companyImages + "serel.jpeg";

  static const _gifs = _outputs + "gif/";
  static const portfolioGif = _gifs + "mobile.gif";
}
