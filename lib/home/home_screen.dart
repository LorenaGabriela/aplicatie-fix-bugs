import 'package:flutter/material.dart';

import 'package:fix_bugs_app/utils/app_base_widget.dart';
import 'package:fix_bugs_app/utils/mocks/screens_list_mock.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBaseWidget(
      pageTitle: 'Hi bug, I will catch you!',
      child: GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(16),
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        crossAxisCount: 2,
        children: List.generate(
            10,
            (index) => _ItemWidget(
                  index: index,
                  route: screensMock[index].route,
                )),
      ),
    );
  }
}

class _ItemWidget extends StatelessWidget {
  final int index;
  final String route;

  const _ItemWidget({required this.index, required this.route, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, route),
      child: Card(
        color: Colors.blue.shade50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.blue.shade900),
                child: Center(
                  child: Text(
                    "${index + 1}",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
