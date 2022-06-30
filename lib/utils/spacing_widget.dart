import 'package:flutter/material.dart';

class SpacingWidget extends StatelessWidget {
  final bool vertical;
  const SpacingWidget({this.vertical = true, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: vertical ? 16 : 0,
      width: vertical? 0 : 16,
    );
  }
}
