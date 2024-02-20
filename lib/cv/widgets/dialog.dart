// Contains Dialog use in app
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../shared/shared.dart';
import 'common.dart';

class LanguageDialog extends StatelessWidget {
  const LanguageDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Choose Your Language'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          divider4B(),
          ...AppLanguage().supportLanguages.entries.map(
                (e) => Container(
                  constraints: const BoxConstraints(
                    minWidth: 300,
                    maxWidth: 500,
                  ),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        borderRadius,
                      ),
                    ),
                    title: Text(
                      e.value,
                      style: context.textTheme.bodyLarge,
                    ),
                    onTap: () async {
                      await Get.updateLocale(parseLocale(e.key));
                      Get.back();
                    },
                  ),
                ),
              )
        ],
      ),
    );
  }
}
