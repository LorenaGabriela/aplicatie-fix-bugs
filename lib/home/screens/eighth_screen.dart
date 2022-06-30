import 'package:flutter/material.dart';

import 'package:fix_bugs_app/utils/app_base_widget.dart';
import 'package:fix_bugs_app/utils/mocks/screens_list_mock.dart';
import 'package:fix_bugs_app/utils/spacing_widget.dart';

class EighthScreen extends StatelessWidget {
  const EighthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double containerWidth = 50;
    return AppBaseWidget(
        pageTitle: screensMock[7].title,
        description: "Care este dimensiunea maxima pe care o poate avea "
            "containerul portocaliu?\n\nAceasta dimensiune trebuie "
            "calculata in functie de toate elementele de pe rand, "
            "astfel incat ea sa fie cea corecta, indiferent de "
            "latimea telefonului folosit. Dimensiunea calculata, trebuie "
            "pusa in variabila containerWidth.",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.network(
                  "https://bugfeedrstorage.blob.core.windows.net/uploads/884052cf-7f5c-487c-b3b2-38239188be52",
                  width: MediaQuery.of(context).size.width * 0.1,
                ),
                const SpacingWidget(
                  vertical: false,
                ),
                const Text(
                  "Marius Marian",
                  style: TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                  ),
                  textScaleFactor: 1.1,
                ),
                const SpacingWidget(
                  vertical: false,
                ),
                Container(
                  width: containerWidth,
                  color: Colors.amber,
                child: Center(child: Text(containerWidth.toString())),)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                SpacingWidget(
                  vertical: false,
                ),
                Icon(Icons.notifications),
              ],
            ),
          ],
        ));
  }
}
