import 'package:flutter/material.dart';

import 'package:fix_bugs_app/utils/app_base_widget.dart';
import 'package:fix_bugs_app/utils/mocks/products_mock.dart';
import 'package:fix_bugs_app/utils/mocks/screens_list_mock.dart';
import 'package:fix_bugs_app/utils/spacing_widget.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBaseWidget(
        pageTitle: screensMock[2].title,
        description: "Hmm.. nu esti tipul la care ma asteptam..",
        child: ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (context, index) => const SpacingWidget(),
          itemCount: productsMock.length,
          itemBuilder: (context, index) =>
              _ItemWidget(item: productsMock[index]),
        ));
  }
}

class _ItemWidget extends StatelessWidget {
  final dynamic item;

  const _ItemWidget({required this.item, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final keywordsList = _getKeywordsList();
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(item["title"]),
                Text(item["price"].toString()),
              ],
            ),
            const SpacingWidget(),
            Text(item["description"]),
            const SpacingWidget(),
            Text("Keywords: $keywordsList"),
          ],
        ),
      ),
    );
  }

  _getKeywordsList() {
    final keywordsName = item["keywords"];
    var keywordsList =
        List.generate(5, (index) => keywordsName[index]).toString();
    keywordsList = keywordsList.substring(1, keywordsList.length - 1);
    return keywordsList;
  }
}
