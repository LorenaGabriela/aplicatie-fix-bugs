import 'package:flutter/material.dart';

import 'package:fix_bugs_app/utils/mocks/news_mock.dart';
import 'package:fix_bugs_app/utils/app_base_widget.dart';
import 'package:fix_bugs_app/utils/mocks/screens_list_mock.dart';
import 'package:intl/intl.dart';

class FourthScreen extends StatelessWidget {
  FourthScreen({Key? key}) : super(key: key);
  final df = new DateFormat('dd.MM.yyyy hh:mm a');
  @override
  Widget build(BuildContext context) {
    return AppBaseWidget(
        pageTitle: screensMock[3].title,
        description: "Cum facem aceasta stire sa arate mai bine?\n\n"
            "- afisam tot continutul stirii\n"
            //"- toate elementele sunt aliniate la stanga (titlu, "
            //"data, imagine, continut)\n"
            "- cardul are o spatiere interioara de 16 pe toate laturile si "
            "o rotunjire a colturilor de 20\n"
            //"- titlul are dimensiunea de 18 si este scris cu bold\n"
            //"- data este scrisa sub forma dd.MM.yyyy si cu un gri inchis\n"
            //"- exista o spatiere de 16 intre elementele stirii\n"
            //"- imaginea are colturile rotunjire cu o raza de 20\n\n"
            "Poti face tu aceste modificari?",
        child: Align(
          alignment: Alignment.topLeft,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(newsMock.title,
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold))),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      df.format(newsMock.createdAt),
                      style: TextStyle(color: Colors.grey[800]),
                    )),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    "https://repository-images.githubusercontent.com/215227998/57e1ea80-a2c2-11ea-837f-0d8dc5598d6e",
                  ),
                ),
                SizedBox(
                  child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Text(newsMock.description, maxLines: 5)),
                ),
              ],
            ),
          ),
        ));
  }
}
