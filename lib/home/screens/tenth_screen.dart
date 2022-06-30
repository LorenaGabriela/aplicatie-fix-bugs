import 'package:flutter/material.dart';

import 'package:fix_bugs_app/utils/app_base_widget.dart';
import 'package:fix_bugs_app/utils/mocks/screens_list_mock.dart';
import 'package:fix_bugs_app/utils/mocks/agents_mock.dart';
import 'package:fix_bugs_app/utils/spacing_widget.dart';
import './/utils/mocks/agents_mock.dart';

class TenthScreen extends StatelessWidget {
  const TenthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<AgentModel> topAgents = [];
    final topThree = allAgents.where(
      (agent) => topThreeAgentsIds.contains(
        agent['id'],
      ),
    );

    topAgents = (topThree
        .map(
          (agent) => AgentModel(
            name: agent['name'].toString(),
            id: agent['id'].toString(),
            income: agent['income'] as int,
          ),
        )
        .toList());

    return AppBaseWidget(
        pageTitle: screensMock[9].title,
        description: "As vrea sa afisez numele si venitul celor 3 agenti din "
            "top, in ordine descrescatoare.\n\n"
            "Se vor folosi variabilele si modelul de agent din fila "
            "utils/mocks/agents_mock.dart."
            "\nId-urile celor 3 agenti din top, care trebuie afisati, se afla in "
            "lista topThreeAgentsIds."
            "\nToate informatiile agentilor se afla in lista allAgents.\n\n"
            "Pentru afisarea celor trei agenti din top, s-a folosit "
            "parametrul topAgents, care momentan este o lista goala. "
            "Astfel, pentru ca acestia sa fie afisati pe ecran, "
            "trebuie populata aceasta lista, pornind de la cele 2 "
            "variabile mentionate mai sus si modelul aferent.",
        child: ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: topAgents.length,
          separatorBuilder: (context, index) => const SpacingWidget(),
          itemBuilder: (context, index) =>
              _ItemWidget(agent: topAgents[index], index: index),
        ));
  }
}

class _ItemWidget extends StatelessWidget {
  final AgentModel agent;
  final int index;

  const _ItemWidget({required this.agent, required this.index, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("${index + 1}. ${agent.name}"),
        Text(agent.income.toString()),
      ],
    );
  }
}
