import 'package:flutter/material.dart';
import 'package:whatsapp/common/extension/custom_theme_extension.dart';
import 'package:whatsapp/common/utils/widget/custom_elevated_button.dart';
import 'package:whatsapp/feature/welcome/pages/language_button.dart';
import 'package:whatsapp/feature/widget/privacy_and_terms.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  /*navigateToLoginPage(context) {
    Navigator.pushNamedAndRemoveUntil(
      context,
      Routes.login,
      (route) => false,
    );
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF111B21),
      body: Column(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 10,
                ),
                child: Image.asset(
                  'assets/images/circle.png',
                color: context.theme.circleImageColor,
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
          Expanded(
              child: Column(
            children: [
              const Text(
                'Welcome to WhatsApp',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              PrivacyAndTerms(),
              CustomElevatedButton(
                onPressed: () {}, //=> navigateToLoginPage(context),
                text: 'AGREE AND CONTINUE',
              ),
              const SizedBox(height: 50),
              const LanguageButton(),
            ],
          ))
        ],
      ),
    );
  }
}
