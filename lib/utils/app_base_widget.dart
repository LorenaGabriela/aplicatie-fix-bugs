import 'package:flutter/material.dart';

import 'package:fix_bugs_app/utils/spacing_widget.dart';

class AppBaseWidget extends StatelessWidget {
  final String pageTitle;
  final String? description;
  final Widget child;
  final Widget? actionButton;

  const AppBaseWidget(
      {required this.pageTitle,
      this.description,
      this.actionButton,
      required this.child,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pageTitle),
        actions: [
          if(actionButton != null) actionButton!
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(children: [
          if(description?.isNotEmpty == true)
          Text(
            description!,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          if(description?.isNotEmpty == true)
          const SpacingWidget(),
          child
        ]),
      ),
    );
  }
}
