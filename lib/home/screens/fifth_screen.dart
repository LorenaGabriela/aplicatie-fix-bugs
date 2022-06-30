import 'package:flutter/material.dart';

import 'package:fix_bugs_app/utils/app_base_widget.dart';
import 'package:fix_bugs_app/utils/mocks/peripherals_mock.dart';
import 'package:fix_bugs_app/utils/mocks/screens_list_mock.dart';
import 'package:fix_bugs_app/utils/spacing_widget.dart';

class FifthScreen extends StatefulWidget {
  const FifthScreen({Key? key}) : super(key: key);

  @override
  State<FifthScreen> createState() => _FifthScreenState();
}

class _FifthScreenState extends State<FifthScreen> {
  var ascendingSort = true;

  @override
  void initState() {
    _sortPeripherals;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppBaseWidget(
        pageTitle: screensMock[4].title,
        description: "Am sortat elementele crescator in functie de pret, "
            "la incarcarea ecranului.. de ce nu sunt afisate corect?\n\n"
            "Pare ca si daca incerc sa le sortez prin apasarea butonului "
            "din AppBar, tot nu se intampla nimic..",
        actionButton: InkWell(
          onTap: _changeSortOrder,
          child: Row(
            children: [
              Text(ascendingSort ? "DESC" : "ASC"),
              Icon(ascendingSort ? Icons.arrow_downward : Icons.arrow_upward),
            ],
          ),
        ),
        child: ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: peripheralsMock.length,
            separatorBuilder: (context, index) => const SpacingWidget(),
            itemBuilder: (context, index) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(peripheralsMock[index].name),
                    Text(peripheralsMock[index].price.toString()),
                  ],
                )));
  }

  _changeSortOrder() {
    _sortPeripherals(!ascendingSort);
    setState(() {
      ascendingSort = !ascendingSort;
    });
  }

  _sortPeripherals(bool ascendingSort) {
    return peripheralsMock.sort((a, b) {
      return ascendingSort
          ? a.price.compareTo(b.price)
          : b.price.compareTo(a.price);
    });
  }
}
