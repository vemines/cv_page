import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../shared/shared.dart';
import 'widgets.dart';

class RightComponents extends StatelessWidget {
  const RightComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.scaledPadd),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sizeBoxH(1),
          Text(
            LocaleKeys.about_me.tr,
            style: context.textTheme.headlineMedium!.copyWith(fontFamily: headerFont),
          ),
          sizeBoxH(1),
          divider4B(),
          sizeBoxH(1),
          Text(
            LocaleKeys.my_about.tr,
            style: context.textTheme.bodyLarge,
          ),
          sizeBoxH(3),
          const _SkillSection(),
          sizeBoxH(3),
          Text(
            LocaleKeys.education.tr,
            style: context.textTheme.headlineMedium!.copyWith(fontFamily: headerFont),
          ),
          sizeBoxH(1),
          divider4B(),
          sizeBoxH(1),
          Text(
            LocaleKeys.my_education.tr,
            style: context.textTheme.bodyLarge,
          ),
          sizeBoxH(3),
          Text(
            LocaleKeys.projects.tr,
            style: context.textTheme.headlineMedium!.copyWith(fontFamily: headerFont),
          ),
          sizeBoxH(1),
          divider4B(),
          sizeBoxH(1),
          Text(
            LocaleKeys.my_project.tr,
            style: context.textTheme.headlineSmall,
          ),
          sizeBoxH(0.5),
          Text(
            LocaleKeys.my_project_detail.tr,
            style: context.textTheme.bodyLarge,
          ),
          sizeBoxH(1.5),
          Text(
            LocaleKeys.my_project_1.tr,
            style: context.textTheme.headlineSmall,
          ),
          sizeBoxH(0.5),
          Text(
            LocaleKeys.my_project_1_detail.tr,
            style: context.textTheme.bodyLarge,
          ),
          sizeBoxH(3),
          Text(
            LocaleKeys.vision.tr,
            style: context.textTheme.headlineMedium!.copyWith(fontFamily: headerFont),
          ),
          sizeBoxH(1),
          divider4B(),
          sizeBoxH(1),
          Text(
            LocaleKeys.my_vision.tr,
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
        sizeBoxH(0.5),
        Text(
          LocaleKeys.my_frontend.tr,
          style: context.textTheme.bodyLarge,
        ),
        sizeBoxH(1.5),
        Text(
          "Database:",
          style: context.textTheme.titleLarge!.copyWith(fontFamily: headerFont),
        ),
        sizeBoxH(0.5),
        Text(
          LocaleKeys.my_database.tr,
          style: context.textTheme.bodyLarge,
        ),
        sizeBoxH(1.5),
        Text(
          "Backend: ",
          style: context.textTheme.titleLarge!.copyWith(fontFamily: headerFont),
        ),
        sizeBoxH(0.5),
        Text(
          LocaleKeys.my_backend.tr,
          style: context.textTheme.bodyLarge,
        ),
        sizeBoxH(1.5),
        Text(
          LocaleKeys.soft_skills.tr,
          style: context.textTheme.titleLarge!.copyWith(fontFamily: headerFont),
        ),
        sizeBoxH(0.5),
        Text(
          LocaleKeys.my_soft_skill.tr,
          style: context.textTheme.bodyLarge,
        ),
      ],
    );
  }
}
