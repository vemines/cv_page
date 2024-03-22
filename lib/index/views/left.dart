part of "view.dart";

class _LeftSection extends GetView<MainController> {
  const _LeftSection();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Dimensions.normal),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Obx(
            () => Align(
              alignment: Alignment.topCenter,
              child: InkWell(
                overlayColor: const MaterialStatePropertyAll<Color>(Colors.transparent),
                onTap: () {}, // => controller.changeImage(),
                child: SizedBox(
                  height: 350,
                  width: 300,
                  child: Image.asset(
                    controller.cvImageUrls[controller.cvImageIndex.value],
                  ),
                ),
              ),
            ),
          ),
          gapN(),
          FittedBox(
            fit: BoxFit.fitWidth,
            child: InkWell(
              overlayColor: const MaterialStatePropertyAll<Color>(Colors.transparent),
              onTap: () => LocaleKeys.my_name.tr.saveToClipBoard(),
              child: Text(
                LocaleKeys.my_name.tr,
                style: context.textTheme.headlineLarge!.copyWith(fontFamily: headerFont),
              ),
            ),
          ),
          gapF(2),
          _LeftRowInfo(
            title: LocaleKeys.dob.tr,
            content: "20/05/1999",
          ),
          gapN(),
          _LeftRowInfo(
            title: "EMAIL: ",
            content: LocaleKeys.my_email.tr,
            clipboard: LocaleKeys.my_email.tr,
          ),
          gapN(),
          _LeftRowInfo(
            title: "GITHUB: ",
            content: LocaleKeys.github.tr,
            url: "https://${LocaleKeys.github.tr}",
          ),
          gapN(),
          _LeftRowInfo(
            title: LocaleKeys.phone.tr,
            content: "(+84) 946360458",
            clipboard: "(+84) 946360458",
          ),
          gapN(),
          _LeftRowInfo(
            title: LocaleKeys.address.tr,
            content: LocaleKeys.my_address.tr,
            clipboard: LocaleKeys.my_address.tr,
          ),
          gapF(2),
          Text(
            LocaleKeys.contact.tr,
            style: context.textTheme.headlineSmall!.copyWith(
              fontFamily: headerFont,
            ),
          ),
          gapN(),
          const _ContactButtonRow(),
        ],
      ),
    );
  }
}

class _ContactButtonRow extends GetView<MainController> {
  const _ContactButtonRow();

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: Dimensions.normal,
      runSpacing: Dimensions.normal,
      children: [
        _SocialContactButton(
          imageUrl: "png/Outlook.png",
          onPressed: () => controller.onOutlookTap(),
        ),
        _SocialContactButton(
          imageUrl: "png/Discord.png",
          onPressed: () => controller.onDiscordTap(),
        ),
        _SocialContactButton(
          imageUrl: "png/Telegram.png",
          onPressed: () => controller.onTelegramTap(),
        ),
        _SocialContactButton(
          imageUrl: "png/WhatsApp.png",
          onPressed: () => controller.onWhatsAppTap(),
        ),
      ],
    );
  }
}

class _SocialContactButton extends StatelessWidget {
  const _SocialContactButton({required this.imageUrl, required this.onPressed});
  final String imageUrl;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: SizedBox(
        height: 35,
        width: 35,
        child: Image.asset(imageUrl),
      ),
    );
  }
}

class _LeftRowInfo extends StatelessWidget {
  const _LeftRowInfo({required this.title, required this.content, this.clipboard, this.url});
  final String title;
  final String content;
  final String? clipboard;
  final String? url;

  @override
  Widget build(BuildContext context) {
    const double iconSize = 20;
    return InkWell(
      onTap: () async {
        clipboard?.saveToClipBoard();
        if (url != null) await launchUrl(Uri.parse(url!));
      },
      overlayColor: const MaterialStatePropertyAll<Color>(Colors.transparent),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: context.textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold),
              maxLines: null,
              textAlign: TextAlign.right,
            ),
          ),
          gapN(),
          Expanded(
            flex: context.width > 1000 ? 3 : 2,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: Text(
                    content,
                    style: context.textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      decoration: url != null ? TextDecoration.underline : null,
                      decorationThickness: 1.5,
                    ),
                    maxLines: null,
                    softWrap: true,
                    overflow: TextOverflow.clip,
                  ),
                ),
                if (clipboard != null)
                  IconButton(
                    onPressed: () async {
                      clipboard?.saveToClipBoard();
                      if (url != null) await launchUrl(Uri.parse(url!));
                    },
                    iconSize: iconSize,
                    icon: const Icon(Icons.copy),
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
