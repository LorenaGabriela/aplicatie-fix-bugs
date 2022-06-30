import 'package:flutter/material.dart';

import 'package:fix_bugs_app/utils/app_base_widget.dart';
import 'package:fix_bugs_app/utils/mocks/film_genres_mock.dart';
import 'package:fix_bugs_app/utils/mocks/screens_list_mock.dart';
import 'package:fix_bugs_app/utils/spacing_widget.dart';

class SixthScreen extends StatefulWidget {
  const SixthScreen({Key? key}) : super(key: key);

  @override
  State<SixthScreen> createState() => _SixthScreenState();
}

class _SixthScreenState extends State<SixthScreen> {
  var checkboxesValues = <bool>[];

  @override
  void initState() {
    for (var element in filmGenresMock) {
      checkboxesValues.add(false);
    }

    super.initState();
  }

  var saveButtonPressed = false;
  @override
  Widget build(BuildContext context) {
    return AppBaseWidget(
        pageTitle: screensMock[5].title,
        description: "De ce nu imi apare mesajul de confirmare dupa ce "
            "apas butonul de salvare?",
        child: Column(
          children: [
            ...List.generate(
                filmGenresMock.length,
                (index) => _ItemWidget(
                    filmGenre: filmGenresMock[index],
                    isChecked: checkboxesValues[index],
                    onChanged: (value) => setState(() {
                          checkboxesValues[index] = value;
                        }),
                    saveButtonPressed: saveButtonPressed)),
            if (!saveButtonPressed && checkboxesValues.contains(true))
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      saveButtonPressed = true;
                    });
                  },
                  child: const Text('Save')),
            if (saveButtonPressed)
              Column(
                children: const [
                  SpacingWidget(),
                  Text("Am salvat preferintele tale!"),
                ],
              )
          ],
        ));
  }
}

class _ItemWidget extends StatelessWidget {
  final String filmGenre;
  final bool isChecked;
  final bool saveButtonPressed;
  final Function onChanged;

  const _ItemWidget(
      {required this.filmGenre,
      required this.isChecked,
      required this.onChanged,
      required this.saveButtonPressed,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: isChecked,
            onChanged: saveButtonPressed ? null : (value) => onChanged(value)),
        const SpacingWidget(),
        Text(filmGenre),
      ],
    );
  }
}
