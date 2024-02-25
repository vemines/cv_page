import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../shared/shared.dart';
import 'widgets/widgets.dart';

class Page404View extends StatelessWidget {
  const Page404View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: const Alignment(0, 0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  constraints: const BoxConstraints(maxWidth: 1000),
                  child: LottieBuilder.asset("${prefixAsset}lottie/404.json")),
              sizeBoxH(1.5),
              Text(
                "PAGE NOT FOUND",
                style: context.textTheme.titleLarge,
              ),
              sizeBoxH(1),
              FilledButton(
                onPressed: () => Get.toNamed("/cv"),
                style: FilledButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.all(16),
                ),
                child: Text(
                  "Home Page",
                  style: context.textTheme.titleMedium!.copyWith(
                    color: context.theme.colorScheme.onPrimary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
