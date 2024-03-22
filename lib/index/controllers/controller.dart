import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../shared/extensions/extensions.dart';

class MainController extends GetxController {
  RxInt cvImageIndex = 0.obs;
  final List<String> cvImageUrls = <String>[
    "jpg/1.jpg",
  ];

  void changeImage() {
    cvImageIndex.value++;
    if (cvImageIndex.value >= cvImageUrls.length) {
      cvImageIndex.value = 0;
    }
  }

  void onDiscordTap() {
    "VeMines#9565".saveToClipBoard();
  }

  void onTelegramTap() {
    launch("https://t.me/VeMines");
  }

  void onOutlookTap() {
    String url =
        "https://outlook.live.com/mail/0/deeplink/compose?popoutv2=1&to=vemines@outlook.com&subject=message&body=hello";
    launch(url);
  }

  void onWhatsAppTap() {
    launch("https://wa.link/61ilcg");
  }

  Future<void> launch(String url) async {
    await launchUrl(Uri.parse(url));
  }
}
