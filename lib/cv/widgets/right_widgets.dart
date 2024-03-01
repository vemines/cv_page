import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../shared/shared.dart';
import 'widgets.dart';

class RightComponents extends StatelessWidget {
  const RightComponents({super.key});

  @override
  Widget build(BuildContext context) {
    final TextStyle headerStyle = context.textTheme.headlineMedium!.copyWith(fontFamily: headerFont);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.scaledPadd),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sizeBoxH(1),
          Text(
            LocaleKeys.about_me.tr,
            style: headerStyle,
          ),
          sizeBoxH(1),
          divider4B(),
          sizeBoxH(1),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              LocaleKeys.my_about.tr.indent,
              style: context.textTheme.bodyLarge!.copyWith(),
            ),
          ),
          sizeBoxH(3),
          const _SkillSection(),
          sizeBoxH(3),
          Text(
            LocaleKeys.projects.tr,
            style: headerStyle,
          ),
          sizeBoxH(1),
          divider4B(),
          sizeBoxH(1),
          InkWell(
            overlayColor: const MaterialStatePropertyAll<Color>(Colors.transparent),
            onTap: () => launchUrl(Uri.parse(LocaleKeys.my_project_url.tr)),
            child: Text(
              LocaleKeys.my_project.tr,
              style: context.textTheme.headlineSmall,
            ),
          ),
          sizeBoxH(0.5),
          Text(
            LocaleKeys.my_project_detail.tr.indent,
            style: context.textTheme.bodyLarge,
          ),
          sizeBoxH(1.5),
          InkWell(
            overlayColor: const MaterialStatePropertyAll<Color>(Colors.transparent),
            onTap: () => launchUrl(Uri.parse(LocaleKeys.my_project_1_url.tr)),
            child: Text(
              LocaleKeys.my_project_1.tr,
              style: context.textTheme.headlineSmall,
            ),
          ),
          sizeBoxH(0.5),
          Text(
            LocaleKeys.my_project_1_detail.tr.indent,
            style: context.textTheme.bodyLarge,
          ),
          sizeBoxH(3),
          Text(
            LocaleKeys.vision.tr,
            style: headerStyle,
          ),
          sizeBoxH(1),
          divider4B(),
          sizeBoxH(1),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Text(
              LocaleKeys.my_vision.tr,
              style: context.textTheme.bodyLarge,
            ),
          ),
          sizeBoxH(3),
          Text(
            LocaleKeys.education.tr,
            style: headerStyle,
          ),
          sizeBoxH(1),
          divider4B(),
          sizeBoxH(1),
          Text(
            LocaleKeys.my_education_school.tr,
            style: context.textTheme.headlineSmall,
          ),
          sizeBoxH(1),
          Text(
            LocaleKeys.my_education.tr.indent,
            style: context.textTheme.bodyLarge,
          ),
          sizeBoxH(2),
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
        Text(
          LocaleKeys.skills.tr,
          style: context.textTheme.headlineMedium!.copyWith(fontFamily: headerFont),
        ),
        sizeBoxH(1),
        divider4B(),
        sizeBoxH(1),
        Text(
          "Frontend:",
          style: context.textTheme.titleLarge!.copyWith(fontFamily: headerFont),
        ),
        sizeBoxH(1),
        Text(
          LocaleKeys.my_frontend.tr.indent,
          style: context.textTheme.bodyLarge,
        ),
        sizeBoxH(1.5),
        Text(
          "Database:",
          style: context.textTheme.titleLarge!.copyWith(fontFamily: headerFont),
        ),
        sizeBoxH(1),
        Text(
          LocaleKeys.my_database.tr.indent,
          style: context.textTheme.bodyLarge,
        ),
        sizeBoxH(1.5),
        Text(
          "Backend: ",
          style: context.textTheme.titleLarge!.copyWith(fontFamily: headerFont),
        ),
        sizeBoxH(1),
        Text(
          LocaleKeys.my_backend.tr.indent,
          style: context.textTheme.bodyLarge,
        ),
        sizeBoxH(1.5),
        Text(
          LocaleKeys.soft_skills.tr,
          style: context.textTheme.titleLarge!.copyWith(fontFamily: headerFont),
        ),
        sizeBoxH(1),
        Text(
          LocaleKeys.my_soft_skill.tr.indent,
          style: context.textTheme.bodyLarge,
        ),
      ],
    );
  }
}
