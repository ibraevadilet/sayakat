import 'package:flutter/material.dart';
import 'package:sayakat/theme/app_colors.dart';
import 'package:sayakat/widgets/custom_button.dart';
import 'package:url_launcher/url_launcher.dart';

class CallButtons extends StatelessWidget {
  const CallButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 5),
        child: Row(
          children: [
            Expanded(
              child: CustomButton(
                color: AppColors.orangeff5733,
                onPress: () async {
                  final Uri launchUri = Uri(
                    scheme: 'tel',
                    path: '+996550050178',
                  );
                  await launchUrl(launchUri);
                },
                text: 'Позвонить',
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: CustomButton(
                color: AppColors.color4CAF50,
                onPress: () async {
                  var whatsapp = "+996550050178";
                  var whatsappUrl =
                      Uri.parse("whatsapp://send?phone=$whatsapp");
                  await launchUrl(whatsappUrl);
                },
                text: "What's App",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
