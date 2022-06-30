import 'package:fix_bugs_app/utils/routes.dart';

class ScreenModel {
  final String title;
  final String route;

  const ScreenModel({required this.title, required this.route});
}

final screensMock = <ScreenModel>[
  const ScreenModel(title: "First Screen", route: Routes.firstScreen),
  const ScreenModel(title: "Second Screen", route: Routes.secondScreen),
  const ScreenModel(title: "Third Screen", route: Routes.thirdScreen),
  const ScreenModel(title: "Fourth Screen", route: Routes.fourthScreen),
  const ScreenModel(title: "Fifth Screen", route: Routes.fifthScreen),
  const ScreenModel(title: "Sixth Screen", route: Routes.sixthScreen),
  const ScreenModel(title: "Seventh Screen", route: Routes.seventhScreen),
  const ScreenModel(title: "Eighth Screen", route: Routes.eighthScreen),
  const ScreenModel(title: "Ninth Screen", route: Routes.ninthScreen),
  const ScreenModel(title: "Tenth Screen", route: Routes.tenthScreen),
];
