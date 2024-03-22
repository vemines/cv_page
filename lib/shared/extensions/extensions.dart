import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

extension SaveToClipboard on String {
  void showToastCopySuccess({required String text}) {
    Get.showSnackbar(
      GetSnackBar(
        maxWidth: 600,
        snackPosition: SnackPosition.BOTTOM,
        borderRadius: 10,
        duration: const Duration(seconds: 3),
        messageText: Text(
          'Copy "$text" clipboard success',
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  void saveToClipBoard() {
    Clipboard.setData(ClipboardData(text: this));
    showToastCopySuccess(text: this);
  }
}
