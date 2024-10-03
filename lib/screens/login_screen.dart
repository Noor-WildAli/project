import 'package:flutter/material.dart';
import 'package:project/generated/l10n.dart';
import 'package:project/widgets/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static String id = 'LoginScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).title_LoginScreen,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Column(children: [
            const CustomTextField(
              hint: 'البريد الالكتروني',
              icon: Icons.email,
            ),
            const CustomTextField(
              hint: 'كلمة ',
              icon: Icons.lock,
            ),
            SizedBox(
              height: 50,
              width: 150,
              child: TextButton(
                onPressed: () {
                  // Button callback
                },
                style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.black)),
                child: const Text(
                  'تسجيل الدخول',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const Row(
              children: [Text('لا تملك حساب؟')],
            )
          ])
        ],
      ),
    );
  }
}
