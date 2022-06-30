import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:fix_bugs_app/utils/app_base_widget.dart';
import 'package:fix_bugs_app/utils/mocks/screens_list_mock.dart';
import 'package:fix_bugs_app/utils/spacing_widget.dart';

class SeventhScreen extends StatefulWidget {
  SeventhScreen({Key? key}) : super(key: key);

  @override
  State<SeventhScreen> createState() => _SeventhScreenState();
}

class _SeventhScreenState extends State<SeventhScreen> {
  final nameController = TextEditingController();

  final cityController = TextEditingController();

  final ageController = TextEditingController();

  var isButtonActive = false;
  @override
  Widget build(BuildContext context) {
    getButtonState();
    return AppBaseWidget(
        pageTitle: screensMock[6].title,
        description: "Butonul ar trebui sa se activeze dupa ce am "
            "completat toate campurile, oare ce mi-a scapat?",
        child: Column(
          children: [
            TextFormField(
              onChanged: (_) => getButtonState(),
              decoration: const InputDecoration(label: Text("Nume")),
              controller: nameController,
            ),
            TextFormField(
              onChanged: (_) => getButtonState(),
              controller: cityController,
              decoration: const InputDecoration(label: Text("Oras")),
            ),
            TextFormField(
              controller: ageController,
              decoration: const InputDecoration(label: Text("Varsta")),
              onChanged: (_) => getButtonState(),
            ),
            const SpacingWidget(),
            ElevatedButton(
                onPressed: getButtonState()
                    ? () {
                        log("Felicitari!");
                      }
                    : null,
                child: const Text("Trimite"))
          ],
        ));
  }

  bool getButtonState() {
    isButtonActive = nameController.text.isNotEmpty &&
        cityController.text.isNotEmpty &&
        ageController.text.isNotEmpty;
    setState(() {});
    return isButtonActive;
  }
}
