import 'package:flutter/material.dart';

buildAppBar() {
  return AppBar(
      backgroundColor: const Color(0xFFF8F8FB),
      leading: Image.asset('assets/images/profile.jpg'),
      elevation: 0,
      actions: [
        IconButton(
          icon: const Icon(Icons.more_horiz),
          color: const Color(0xFFA6A9E8),
          iconSize: 40,
          onPressed: () {}, //TODO: chamar drawer
        ),
      ]);
}

Widget buildStandardInput(
  TextEditingController controller, {
  TextInputType? keyboardType,
  String? label,
  bool? obscure,
  String? hint,
  String? value,
}) {
  return TextFormField(
    controller: controller,
    autovalidateMode: AutovalidateMode.onUserInteraction,
    keyboardType: keyboardType,
    autofocus: true,
    obscureText: obscure ?? false,
    decoration: InputDecoration(
      labelText: label,
      hintText: hint,
    ),
  );
}

Widget buildFeelingsInput(
  TextEditingController controller,
  BuildContext context,
) {
  return Container(
      margin: const EdgeInsets.only(left: 16, right: 16),
      height: 70,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Color(0xFF576B9E),
            blurRadius: 5,
            offset: Offset(1, 1),
          ),
        ],
      ),
      child: TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText:
                'Se não estiver tudo bem, gostaria de compartilhar sobre o que te afetou?',
            hintMaxLines: 2,
            hintStyle:
                const TextStyle(color: Color(0xFF576B9E), fontSize: 12.0),
            filled: true,
            fillColor: const Color(0xFFF8F8FB),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Color(0xFFF8F8FB),
                width: 1.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Color(0xFF576B9E),
                width: 2.0,
              ),
            ),
          ),
          onSubmitted: (String _feelingsBoxController) async {
            await showDialog<void>(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Obrigada por compartilhar!'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('OK'),
                    ),
                  ],
                );
              },
            );
          }));
}

buildWelcomeText() {
  return Column(
    children: [
      Row(
        children: const [
          Text(
            'Bom te ver, @user!', //TODO: informar o usuario
            style: TextStyle(fontSize: 14.0, color: Color(0xFF292643)),
          ),
        ],
      ),
      const SizedBox(height: 8),
      Row(
        children: const [
          Text(
            'Me conta o que você fez hoje :)',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Color(0xFF292643)),
          ),
        ],
      ),
    ],
  );
}
