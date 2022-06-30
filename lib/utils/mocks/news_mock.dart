class NewsModel {
  final String title;
  final String description;
  final DateTime createdAt;

  const NewsModel(
      {required this.title,
      required this.description,
      required this.createdAt});
}

final newsMock = NewsModel(
    title: "Flutter launches Sustainability Strategy",
    description: "Positive Impact Plan sets agenda to lead betting and "
        "gaming into the future\n\n"
        "Flutter Entertainment plc (the “Group”) today announces the "
        "launch of its inaugural sustainability strategy, the Positive "
        "Impact Plan.\n\n"
        "The plan identifies three key areas of focus and brings together "
        "significant progress from across the Group to create global goals "
        "that support our overall corporate strategy:\n"
        "\u2022 By 2030 we aim to have 75% of our active online customers "
        "globally using one or more of our Play Well tools, with over 50% "
        "using one or more tools by 2026.\n"
        "\u2022 By 2030, we want to create and build teams that are "
        "representative of the locations in which we live and work, "
        "through a comprehensive DE&I strategy, supported by clear "
        "stepping stone goals.\n"
        "\u2022 By 2030 we aim to improve the lives of 10 million people "
        "using the power of sport and play, the skills of our colleagues, "
        "and the reach of our brand.",
    createdAt: DateTime(2022, 01, 20));
