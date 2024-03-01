import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../shared/shared.dart';
import 'cv_controller.dart';
import 'widgets/widgets.dart';

class CvView extends GetView<CvController> {
  const CvView({super.key});

  @override
  Widget build(BuildContext context) {
    bool bp = context.width > 1000;
    return Scaffold(
      body: ListView(
        children: [
          CustomAppBar(
            title: "VeMines CV",
            centerTitle: bp,
          ),
          Container(
            padding: EdgeInsets.only(
              left: 1.scaledPadd,
              right: 1.scaledPadd,
              bottom: 1.scaledPadd,
            ),
            child: bp
                ? Material(
                    type: MaterialType.card,
                    surfaceTintColor: context.theme.colorScheme.surfaceTint,
                    elevation: 8,
                    child: Padding(
                      padding: EdgeInsets.only(top: 1.scaledPadd),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Expanded(flex: 3, child: LeftComponents()),
                          sizeBoxW(0.75),
                          VerticalDivider(
                            width: 2,
                            color: Get.isDarkMode ? white.withOpacity(0.4) : black.withOpacity(0.4),
                          ),
                          sizeBoxW(0.75),
                          const Expanded(flex: 7, child: RightComponents()),
                        ],
                      ),
                    ),
                  )
                : Material(
                    type: MaterialType.card,
                    surfaceTintColor: context.theme.colorScheme.surfaceTint,
                    elevation: 8,
                    child: Column(
                      children: [
                        const LeftComponents(),
                        sizeBoxH(1),
                        const RightComponents(),
                      ],
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
