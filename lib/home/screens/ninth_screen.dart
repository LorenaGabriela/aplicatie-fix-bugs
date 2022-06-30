import 'package:flutter/material.dart';

import 'package:fix_bugs_app/utils/app_base_widget.dart';
import 'package:fix_bugs_app/utils/mocks/questions_mock.dart';
import 'package:fix_bugs_app/utils/mocks/screens_list_mock.dart';
import 'package:fix_bugs_app/utils/spacing_widget.dart';

class NinthScreen extends StatelessWidget {
  const NinthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBaseWidget(
      pageTitle: screensMock[8].title,
      description: "Nu reusesc sa imi dau seama de ce nu se afiseaza FAQ. "
          "Tu ai vreo idee?",
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) => const SpacingWidget(),
        itemCount: questions.length,
        itemBuilder: (context, index) => _ExpansionElement(
          question: questions[index],
        ),
      ),
    );
  }
}

class _ExpansionElement extends StatefulWidget {
  final dynamic question;

  const _ExpansionElement({
    Key? key,
    required this.question,
  }) : super(key: key);

  @override
  _ExpansionElementState createState() => _ExpansionElementState();
}

class _ExpansionElementState extends State<_ExpansionElement> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          setState(() {
            isExpanded = !isExpanded;
          });
        },
        child: _QuestionItem(
          isExpanded: isExpanded,
          question: widget.question,
        ),
      ),
    );
  }
}

class _QuestionItem extends StatelessWidget {
  final bool isExpanded;
  final dynamic question;

  const _QuestionItem(
      {required this.isExpanded, required this.question, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(question["answer"]),
              ),
              Icon(
                isExpanded ? Icons.expand_less : Icons.expand_more,
              ),
            ],
          ),
          isExpanded
              ? Column(
                  children: [
                    const SpacingWidget(),
                    Row(
                      children: [
                        Expanded(
                          child: Text(question["answer"]),
                        ),
                      ],
                    ),
                  ],
                )
              : Container(),
        ],
      ),
    );
  }
}
