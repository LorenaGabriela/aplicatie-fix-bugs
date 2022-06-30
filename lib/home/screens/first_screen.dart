import 'package:flutter/material.dart';

import 'package:fix_bugs_app/utils/app_base_widget.dart';
import 'package:fix_bugs_app/utils/mocks/screens_list_mock.dart';
import 'package:fix_bugs_app/utils/spacing_widget.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBaseWidget(
        pageTitle: screensMock[0].title,
        description:
            "Nu se vad bine textele de pe ecran. Ma poti ajuta, te rog?",
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            _IntroductionWidget(),
            SpacingWidget(),
            _CharacteristicsWidget(),
          ],
        ));
  }
}

class _IntroductionWidget extends StatelessWidget {
  const _IntroductionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("\u2022 What is Flutter?"),
        const SpacingWidget(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              "https://blog.logrocket.com/wp-content/uploads/2022/02/Best-IDEs-Flutter-2022.png",
              width: MediaQuery.of(context).size.width * 0.3,
            ),
            const SpacingWidget(
              vertical: false,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Flutter is a free and open-source mobile UI framework "
                      "created by Google and released in May 2017. In a few "
                      "words, it allows you to create a native mobile "
                      "application with only one codebase. This means that "
                      "you can use one programming language and one codebase "
                      "to create two different apps (for iOS and Android)."),
                  Text("01.01.2022"),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _CharacteristicsWidget extends StatelessWidget {
  const _CharacteristicsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text("\u2022 What are its characteristics?"),
        SpacingWidget(),
        _FastWidget(),
        SpacingWidget(),
        _ProductiveWidget(),
        SpacingWidget(),
        _FlexibleWidget(),
      ],
    );
  }
}

class _FastWidget extends StatelessWidget {
  const _FastWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Fast",
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          child: Text(
              "Flutter code compiles to ARM or Intel machine code as well as "
              "JavaScript, for fast performance on any device."),
        ),
      ],
    );
  }
}

class _ProductiveWidget extends StatelessWidget {
  const _ProductiveWidget({Key? key}) : super(key: key);
//am folosir Refactor cu Expanded
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Productive", style: TextStyle(fontStyle: FontStyle.italic)),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text("Build and iterate quickly with Hot Reload. Update code and "
                  "see changes almost instantly, without losing state."),
            ],
          ),
        ),
      ],
    );
  }
}

class _FlexibleWidget extends StatelessWidget {
  const _FlexibleWidget({Key? key}) : super(key: key);

//am folosit Refactor cu SizedBox pentru Text
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Flexible", style: TextStyle(fontStyle: FontStyle.italic)),
        const SizedBox(
          width: 16,
        ),
        Row(
          children: const [
            SizedBox(
              width: 300,
              child: Text(
                  "Control every pixel to create customized, adaptive designs "
                  "that look and feel great on any screen."),
            ),
          ],
        ),
      ],
    );
  }
}
