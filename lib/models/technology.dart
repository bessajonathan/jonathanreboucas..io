import 'package:my_website/utils/constants.dart';

class TechnologyModel {
  final String name;
  final String logo;

  TechnologyModel(this.name, this.logo);
}

class TechnologyConstants {
  static TechnologyModel cSharp = TechnologyModel("C#", AppConstants.cSharp);
  static TechnologyModel netCore =
      TechnologyModel(".NET", AppConstants.netCoreImage);
  static TechnologyModel flutter =
      TechnologyModel("Flutter", AppConstants.flutterImage);
  static TechnologyModel dart = TechnologyModel("Dart", AppConstants.dart);
  static TechnologyModel firebase =
      TechnologyModel("Firebase", AppConstants.firebaseImage);
  static TechnologyModel javascript =
      TechnologyModel("Javascript", AppConstants.javascriptImage);
  static TechnologyModel angular =
      TechnologyModel("Angular", AppConstants.angular);
  static TechnologyModel postgre =
      TechnologyModel("PostgreSQL", AppConstants.postgre);
  static TechnologyModel ionic = TechnologyModel("Ionic", AppConstants.ionic);
  static TechnologyModel aws = TechnologyModel("AWS", AppConstants.aws);
  static TechnologyModel heroku =
      TechnologyModel("Heroku", AppConstants.heroku);
  static TechnologyModel mongo = TechnologyModel("MongoDb", AppConstants.mongo);
  static TechnologyModel git = TechnologyModel("Git", AppConstants.git);
  static TechnologyModel node = TechnologyModel("Node", AppConstants.node);

  static List<TechnologyModel> technologyLearned = [
    cSharp,
    javascript,
    dart,
    netCore,
    flutter,
    angular,
    node,
    postgre,
    mongo,
    firebase,
    ionic,
    aws,
    heroku,
    git
  ];
}
