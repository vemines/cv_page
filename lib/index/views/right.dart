part of "view.dart";

class _RightSection extends StatelessWidget {
  const _RightSection();

  @override
  Widget build(BuildContext context) {
    final TextStyle headerStyle = context.textTheme.headlineMedium!.copyWith(fontFamily: headerFont);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dimensions.normal),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          gapN(),
          SelectableText(
            LocaleKeys.about.tr,
            style: headerStyle,
          ),
          gapN(),
          divider(),
          gapN(),
          SelectableText(
            LocaleKeys.my_about.tr,
            style: context.textTheme.bodyLarge!.copyWith(),
          ),
          gapF(2),
          const _SkillSection(),
          gapF(2),
          const _ProjectSection(),
          gapF(2),
          SelectableText(
            LocaleKeys.vision.tr,
            style: headerStyle,
          ),
          gapN(),
          divider(),
          gapN(),
          SelectableText(
            LocaleKeys.my_vision.tr,
            style: context.textTheme.bodyLarge,
          ),
          gapF(2),
          SelectableText(
            LocaleKeys.education.tr,
            style: headerStyle,
          ),
          gapN(),
          divider(),
          gapN(),
          SelectableText(
            LocaleKeys.my_school.tr,
            style: context.textTheme.titleLarge,
          ),
          gapSM(),
          SelectableText(
            LocaleKeys.my_school_info.tr,
            style: context.textTheme.bodyLarge,
          ),
          gapF(2),
        ],
      ),
    );
  }
}

class _SkillSection extends StatelessWidget {
  const _SkillSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          LocaleKeys.skills.tr,
          style: context.textTheme.headlineMedium!.copyWith(fontFamily: headerFont),
        ),
        gapN(),
        divider(),
        gapN(),
        SelectableText(
          "Frontend:",
          style: context.textTheme.titleLarge!.copyWith(fontFamily: headerFont),
        ),
        gapSM(),
        SelectableText(
          LocaleKeys.my_frontend.tr,
          style: context.textTheme.bodyLarge,
        ),
        gapN(),
        SelectableText(
          "Database:",
          style: context.textTheme.titleLarge!.copyWith(fontFamily: headerFont),
        ),
        gapSM(),
        SelectableText(
          LocaleKeys.my_database.tr,
          style: context.textTheme.bodyLarge,
        ),
        gapN(),
        SelectableText(
          "Backend: ",
          style: context.textTheme.titleLarge!.copyWith(fontFamily: headerFont),
        ),
        gapSM(),
        SelectableText(
          LocaleKeys.my_backend.tr,
          style: context.textTheme.bodyLarge,
        ),
      ],
    );
  }
}

class _ProjectSection extends StatelessWidget {
  const _ProjectSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          LocaleKeys.projects.tr,
          style: context.textTheme.headlineMedium!.copyWith(fontFamily: headerFont),
        ),
        gapN(),
        divider(),
        gapN(),
        InkWell(
          overlayColor: const MaterialStatePropertyAll<Color>(Colors.transparent),
          onTap: () => launchUrl(Uri.parse(LocaleKeys.my_project_1_url.tr)),
          child: Text(
            LocaleKeys.my_project_1.tr,
            style: context.textTheme.headlineSmall,
          ),
        ),
        gapSM(),
        SelectableText(
          LocaleKeys.my_project_1_info.tr,
          style: context.textTheme.bodyLarge,
        ),
        gapL(),
        InkWell(
          overlayColor: const MaterialStatePropertyAll<Color>(Colors.transparent),
          onTap: () => launchUrl(Uri.parse(LocaleKeys.my_project_2_url.tr)),
          child: Text(
            LocaleKeys.my_project_2.tr,
            style: context.textTheme.headlineSmall,
          ),
        ),
        gapSM(),
        SelectableText(
          LocaleKeys.my_project_2_info.tr,
          style: context.textTheme.bodyLarge,
        ),
      ],
    );
  }
}
