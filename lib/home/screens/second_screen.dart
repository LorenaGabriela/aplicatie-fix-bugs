import 'package:flutter/material.dart';

import 'package:fix_bugs_app/utils/app_base_widget.dart';
import 'package:fix_bugs_app/utils/mocks/screens_list_mock.dart';
import 'package:fix_bugs_app/utils/spacing_widget.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return AppBaseWidget(
        pageTitle: screensMock[1].title,
        description:
            "Oare poti face ca imaginea din dreapta sa arate la fel ca "
            "avatarul din stanga (dimensiuni, forma) ?",
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: deviceSize.width * 0.2,
                  height: deviceSize.height * 0.2,
                  child: Image.network(
                      "https://www.terrainhopperusa.com/wp-content/uploads/2019/01/avatar-woman.png"),
                ),
                const SpacingWidget(
                  vertical: false,
                ),
                CircleAvatar(
                  radius: deviceSize.width * 0.1,
                  child: Image.network(
                    "https://www.w3schools.com/howto/img_avatar2.png",
                  ),
                ),
              ],
            ),
            const SpacingWidget(),
            const SpacingWidget(),
            const Text(
              "Pare ca nu se vede intreaga poza. Ai vreo idee de ce?",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SpacingWidget(),
            ClipRRect(
              borderRadius: BorderRadius.circular(deviceSize.width * 0.1),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: deviceSize.height * 0.4,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://miro.medium.com/max/1000/1*w_Hwise5fi9orTgRt5ClQA.jpeg"))),
              ),
            ),
          ],
        ));
  }
}
