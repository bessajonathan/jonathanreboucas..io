import 'package:my_website/models/technology.dart';
import 'package:my_website/utils/constants.dart';

class CompanyModel {
  final String title;
  final String description;
  final String appPhotos;
  final List<TechnologyModel> techUsed;

  CompanyModel({
    required this.title,
    required this.description,
    required this.appPhotos,
    required this.techUsed,
  });

  static List<CompanyModel> companies = [
    CompanyModel(
      title: "Toro Investimentos",
      description: "Atuo no desenvolvimento do aplicativo da corretora",
      appPhotos: AppConstants.toro,
      techUsed: [
        TechnologyConstants.flutter,
        TechnologyConstants.firebase,
        TechnologyConstants.cSharp,
        TechnologyConstants.netCore,
        TechnologyConstants.aws,
        TechnologyConstants.git
      ],
    ),
    CompanyModel(
      title: "Qualifiquei",
      description:
          "Atuo na criação e manutenção de sistemas de prospecção, qualificações e feedback",
      appPhotos: AppConstants.qualifiquei,
      techUsed: [
        TechnologyConstants.cSharp,
        TechnologyConstants.netCore,
        TechnologyConstants.angular,
        TechnologyConstants.ionic,
        TechnologyConstants.firebase,
        TechnologyConstants.postgre,
        TechnologyConstants.git,
        TechnologyConstants.aws,
      ],
    ),
    CompanyModel(
      title: "Celcoin",
      description: "Atuei no desenvolvimento do aplicativo RedeCelcoin.",
      appPhotos: AppConstants.celcoin,
      techUsed: [
        TechnologyConstants.flutter,
        TechnologyConstants.firebase,
        TechnologyConstants.cSharp,
        TechnologyConstants.netCore,
        TechnologyConstants.git
      ],
    ),
    CompanyModel(
      title: "Restfy",
      description:
          "Atuei como Desenvolvedor Backend no produto principal voltado para fabricação e estampagem de placas automotivas padrão mercosul.",
      appPhotos: AppConstants.restfy,
      techUsed: [
        TechnologyConstants.cSharp,
        TechnologyConstants.netCore,
        TechnologyConstants.postgre,
        TechnologyConstants.aws,
        TechnologyConstants.git
      ],
    ),
    CompanyModel(
      title: "Serel",
      description:
          "Atuava na criação e manutenção de sistemas Web para mais de 10 fundações de previdência complementar e fundos de investimento. Entre elas OABPrevGo, Anabbprev e Fipecq.",
      appPhotos: AppConstants.serel,
      techUsed: [
        TechnologyConstants.cSharp,
        TechnologyConstants.netCore,
        TechnologyConstants.angular,
        TechnologyConstants.git
      ],
    ),
  ];

  static List<CompanyModel> demos = [
    CompanyModel(
      title: "Flutter Web Portfolio",
      description: "",
      appPhotos: AppConstants.portfolioGif,
      techUsed: [],
    ),
  ];
}
